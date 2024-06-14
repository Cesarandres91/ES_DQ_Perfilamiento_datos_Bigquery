DECLARE f_1 DATE DEFAULT '2021-01-01';
DECLARE f_2 DATE DEFAULT '2021-12-31';
SELECT 'twitch_data.streams' AS TABLA, 'viewer_count' AS CAMPO,
    COUNT(viewer_count) AS Total_Registros,
    COUNTIF(viewer_count IS NULL) AS Nulos,
    0 AS Blancos,
    COUNT(DISTINCT viewer_count) AS Distintos,
    CAST(MAX(viewer_count) AS STRING) AS Valor_Maximo,
    CAST(MIN(viewer_count) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(viewer_count AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(viewer_count AS STRING))) AS Largo_Minimo,
    COUNTIF(viewer_count < 0) AS Negativos,
    COUNTIF(viewer_count > 0) AS Positivos,
    COUNTIF(viewer_count = 0) AS Igual_Cero,
    AVG(viewer_count) AS Promedio,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, 'viewer_suscribers' AS CAMPO,
    COUNT(viewer_suscribers) AS Total_Registros,
    COUNTIF(viewer_suscribers IS NULL) AS Nulos,
    0 AS Blancos,
    COUNT(DISTINCT viewer_suscribers) AS Distintos,
    CAST(MAX(viewer_suscribers) AS STRING) AS Valor_Maximo,
    CAST(MIN(viewer_suscribers) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(viewer_suscribers AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(viewer_suscribers AS STRING))) AS Largo_Minimo,
    COUNTIF(viewer_suscribers < 0) AS Negativos,
    COUNTIF(viewer_suscribers > 0) AS Positivos,
    COUNTIF(viewer_suscribers = 0) AS Igual_Cero,
    AVG(viewer_suscribers) AS Promedio,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, 'stream_language' AS CAMPO,
    COUNT(stream_language) AS Total_Registros,
    COUNTIF(stream_language IS NULL) AS Nulos,
    COUNTIF(stream_language = '') AS Blancos,
    COUNT(DISTINCT stream_language) AS Distintos,
    CAST(MAX(stream_language) AS STRING) AS Valor_Maximo,
    CAST(MIN(stream_language) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(stream_language AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(stream_language AS STRING))) AS Largo_Minimo,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, 'category' AS CAMPO,
    COUNT(category) AS Total_Registros,
    COUNTIF(category IS NULL) AS Nulos,
    COUNTIF(category = '') AS Blancos,
    COUNT(DISTINCT category) AS Distintos,
    CAST(MAX(category) AS STRING) AS Valor_Maximo,
    CAST(MIN(category) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(category AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(category AS STRING))) AS Largo_Minimo,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, 'stream_title' AS CAMPO,
    COUNT(stream_title) AS Total_Registros,
    COUNTIF(stream_title IS NULL) AS Nulos,
    COUNTIF(stream_title = '') AS Blancos,
    COUNT(DISTINCT stream_title) AS Distintos,
    CAST(MAX(stream_title) AS STRING) AS Valor_Maximo,
    CAST(MIN(stream_title) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(stream_title AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(stream_title AS STRING))) AS Largo_Minimo,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, 'broadcaster_name' AS CAMPO,
    COUNT(broadcaster_name) AS Total_Registros,
    COUNTIF(broadcaster_name IS NULL) AS Nulos,
    COUNTIF(broadcaster_name = '') AS Blancos,
    COUNT(DISTINCT broadcaster_name) AS Distintos,
    CAST(MAX(broadcaster_name) AS STRING) AS Valor_Maximo,
    CAST(MIN(broadcaster_name) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(broadcaster_name AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(broadcaster_name AS STRING))) AS Largo_Minimo,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
UNION ALL

SELECT 'twitch_data.streams' AS TABLA, '_PARTITIONTIME' AS CAMPO,
    COUNT(_PARTITIONTIME) AS Total_Registros,
    COUNTIF(_PARTITIONTIME IS NULL) AS Nulos,
    0 AS Blancos,
    COUNT(DISTINCT _PARTITIONTIME) AS Distintos,
    CAST(MAX(_PARTITIONTIME) AS STRING) AS Valor_Maximo,
    CAST(MIN(_PARTITIONTIME) AS STRING) AS Valor_Minimo,
    MAX(CHAR_LENGTH(CAST(_PARTITIONTIME AS STRING))) AS Largo_Maximo,
    MIN(CHAR_LENGTH(CAST(_PARTITIONTIME AS STRING))) AS Largo_Minimo,
    f_1 AS Fecha_desde,
    f_2 AS Fecha_hasta
FROM twitch_data.streams
WHERE DATE(_PARTITIONTIME) BETWEEN f_1 AND f_2
