import pandas as pd
import os
import math
from datetime import datetime

# Obtener la fecha y hora actual para usar en nombres de archivo
now = datetime.now().strftime("%Y%m%d_%H%M%S")

# Opción 1: para cargar desde un archivo CSV desde tu escritorio, debes modificar la ruta
df = pd.read_csv('C:\\Users\\cesar\\plantilla_perfilamiento.csv', header=0)

# Declaraciones iniciales para fechas, asumiendo que 'Fecha_desde' y 'Fecha_hasta' están en las columnas correctas
str1 = f"DECLARE f_1 DATE DEFAULT '{df['Fecha_desde'].iloc[0]}';\n"
str2 = f"DECLARE f_2 DATE DEFAULT '{df['Fecha_hasta'].iloc[0]}';\n"

# Variables de control para dividir el SQL en partes
total = len(df)
partes = math.ceil(total / 81)
conta_partes = [min((i + 1) * 70, total) for i in range(partes - 1)]
conta_partes.append(total)

# Inicializar la consulta SQL
consulta_bq = ""
part_cc = 0

# Generar la consulta SQL para cada fila
for i, row in df.iterrows():
    CAMPO = row['CAMPO']
    TIPO = row['TIPO']
    PARTICION = row['PARTICION']
    TABLA = row['TABLA']

    # Consulta base
    consulta_bq += f"SELECT '{TABLA}' AS TABLA, '{CAMPO}' AS CAMPO,\n"
    consulta_bq += f"    COUNT({CAMPO}) AS Total_Registros,\n"
    consulta_bq += f"    COUNTIF({CAMPO} IS NULL) AS Nulos,\n"

    if TIPO == "STRING":
        consulta_bq += f"    COUNTIF({CAMPO} = '') AS Blancos,\n"
    else:
        consulta_bq += "    0 AS Blancos,\n"

    consulta_bq += f"    COUNT(DISTINCT {CAMPO}) AS Distintos,\n"
    consulta_bq += f"    CAST(MAX({CAMPO}) AS STRING) AS Valor_Maximo,\n"
    consulta_bq += f"    CAST(MIN({CAMPO}) AS STRING) AS Valor_Minimo,\n"
    consulta_bq += f"    MAX(CHAR_LENGTH(CAST({CAMPO} AS STRING))) AS Largo_Maximo,\n"
    consulta_bq += f"    MIN(CHAR_LENGTH(CAST({CAMPO} AS STRING))) AS Largo_Minimo,\n"

    if TIPO in ["NUMERIC", "FLOAT", "INTEGER", "BIGNUMERIC"]:
        consulta_bq += f"    COUNTIF({CAMPO} < 0) AS Negativos,\n"
        consulta_bq += f"    COUNTIF({CAMPO} > 0) AS Positivos,\n"
        consulta_bq += f"    COUNTIF({CAMPO} = 0) AS Igual_Cero,\n"
        consulta_bq += f"    AVG({CAMPO}) AS Promedio,\n"

    consulta_bq += f"    f_1 AS Fecha_desde,\n    f_2 AS Fecha_hasta\n"
    consulta_bq += f"FROM {TABLA}\n"
    consulta_bq += f"WHERE DATE({PARTICION}) BETWEEN f_1 AND f_2\n"

    if i + 1 in conta_partes:
        # Escribir la consulta en un archivo cuando se alcanza un punto de separación
        nombre_file = f"Perfilamiento_parte_{part_cc+1}_{now}.txt"
        with open(nombre_file, "w") as file:
            file.write(str1 + str2 + consulta_bq)
        print(f"Archivo guardado: {nombre_file}")  # Información para el usuario

        # Resetear la consulta y actualizar el contador de partes
        consulta_bq = ""
        part_cc += 1
    else:
        consulta_bq += "UNION ALL\n\n"

# Opcional: Abrir la carpeta contenedora en el explorador de archivos
os.startfile(os.path.dirname(nombre_file))