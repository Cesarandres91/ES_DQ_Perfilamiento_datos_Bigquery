# Sistema de Perfilamiento de Datos para BigQuery

## Descripción del Proyecto
Este repositorio contiene un marco de trabajo automatizado diseñado para crear perfiles de datos de tablas almacenadas en Google BigQuery. Utiliza Python para iterar sobre un conjunto de reglas de datos definidas en una hoja de Excel, generando scripts SQL dinámicamente para el análisis de calidad de datos en BigQuery.

## :bar_chart: Mejorando la Calidad y Análisis de Datos en la Nube con una Herramienta de Perfilamiento de Datos
Buenas tardes, distinguidos colegas y líderes en el campo de la tecnología y análisis de datos. Hoy tengo el placer de compartir con ustedes una innovadora solución que he desarrollado para mejorar la calidad y el análisis de los datos en entornos de la nube.

## :file_folder: Flexibilidad en la Carga de Datos
Esta herramienta, diseñada y codificada meticulosamente, facilita el perfilamiento de datos mediante una serie de cargas de datos flexibles y personalizables desde diversas fuentes como archivos CSV, Excel, y directamente desde Google Sheets. Esta capacidad de adaptarse a múltiples formatos de entrada es fundamental en entornos dinámicos donde la agilidad y la precisión son cruciales.

## :mag_right: Análisis Detallado y Personalizado
Además, el código incorpora funcionalidades avanzadas para generar consultas SQL detalladas y específicas que se ejecutan en BigQuery. Estas consultas no solo contabilizan registros totales y nulos, sino que también evalúan la integridad y la distribución de los datos, incluyendo la identificación de valores extremos y la realización de cálculos estadísticos como promedios y conteos condicionales. Esto es esencial para garantizar que los datos no solo sean precisos, sino también útiles para tomar decisiones informadas.

## :hammer_and_wrench: Automatización y Manejo Eficiente
Una de las características más innovadoras de este código es su capacidad para automatizar el desglose de grandes conjuntos de datos en múltiples partes, facilitando así su manejo y análisis. Cada segmento del análisis puede ser exportado y compartido en tiempo real, permitiendo una colaboración efectiva y una revisión continua de los resultados.

## :rocket: Impulsando Decisiones Informadas
Esta herramienta no solo optimiza los procesos de trabajo existentes sino que también abre nuevas oportunidades para explorar datos complejos de manera más eficiente en la nube. Al mejorar continuamente la calidad de los datos y proporcionar análisis profundos y accesibles, facilitamos la toma de decisiones basadas en evidencias sólidas y contribuimos al avance de nuestras empresas y clientes en la era digital.

## :handshake: Invitación a Colaborar
Invito a todos los interesados en mejorar la calidad de sus datos y eficientizar sus procesos analíticos a conectarse conmigo para explorar posibles colaboraciones y oportunidades profesionales. Juntos, podemos transformar la manera en que interactuamos con los datos y liderar la próxima ola de innovaciones en la analítica de datos.

## :sparkles: Gracias por su atención y espero poder conectar y colaborar con muchos de ustedes en el futuro próximo. :sparkles:



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


