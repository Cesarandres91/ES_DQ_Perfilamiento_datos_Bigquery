# Sistema de Perfilamiento de Datos para BigQuery

## Descripción del Proyecto
Este repositorio contiene un marco de trabajo automatizado diseñado para crear perfiles de datos de tablas almacenadas en Google BigQuery. Utiliza Python para iterar sobre un conjunto de reglas de datos definidas en una hoja de Excel, generando scripts SQL dinámicamente para el análisis de calidad de datos en BigQuery.

## Características
- **Generación Automática de Consultas SQL**: Scripts de Python leen especificaciones desde una hoja de Excel y generan consultas SQL.
- **Perfilamiento Personalizable**: Permite la personalización completa del perfilamiento basado en parámetros definidos en la hoja de Excel.
- **Reportes de Calidad de Datos**: Genera métricas de calidad de datos como registros correctos, errores y umbrales de calidad.

## Pre-requisitos
- Python 3.8 o superior.
- Acceso a Google BigQuery.
- Google Colab o un entorno Python local configurado.
- Paquete `pandas` instalado para la manipulación de datos.
- Credenciales de Google Cloud con permisos adecuados para leer y ejecutar consultas en BigQuery.

## Configuración
1. **Clonar el Repositorio**:

2. **Instalación de Dependencias**:


3. **Configuración de Credenciales de Google Cloud**:
- Asegúrate de tener un archivo de credenciales de servicio de Google Cloud (JSON).
- Establece la variable de entorno `GOOGLE_APPLICATION_CREDENTIALS` apuntando al archivo JSON:
  ```
  export GOOGLE_APPLICATION_CREDENTIALS="path/to/your/credentials.json"
  ```

## Uso
- Modifica el archivo `crear_query.xlsx` con las reglas y parámetros deseados para el perfilamiento.
- Ejecuta el script `profile_data.py` para generar y ejecutar las consultas SQL:

## Estructura del Repositorio
- `README.md`: Este archivo.
- `sql/`: Directorio que almacena scripts SQL generados y plantillas.
- `src/`: Código fuente Python para la generación de consultas.
- `data/`: Ejemplos de archivos Excel con configuraciones de perfilamiento.
- `docs/`: Documentación adicional y guías de uso.

## Contribución
Para contribuir al proyecto, por favor sigue los siguientes pasos:
- **Fork el Repositorio**: Haz un fork del proyecto a tu cuenta de GitHub.
- **Crea una Rama**: Crea una rama para tus cambios.
- **Haz tus Cambios**: Añade o mejora funcionalidades.
- **Envía un Pull Request**: Envía un PR para integrar tus cambios al repositorio principal.

## Licencia
Este proyecto está licenciado bajo la Licencia MIT - ver el archivo `LICENSE` para más detalles.


