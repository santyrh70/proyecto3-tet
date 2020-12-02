# Descarga el dataset desde la pagina indicada
curl -o covid19.csv https://www.datos.gov.co/api/views/gt2j-8ykr/rows.csv?accessType=DOWNLOAD
# Copia el archivo a aws S3
aws s3 cp covid19.csv s3://proyecto-3/Raw-py3/
# Elimina el archivo descargado localmente
rm covid19.csv