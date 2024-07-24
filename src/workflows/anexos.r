# Especifica el directorio donde se encuentran los archivos de datos
dataset_directory <- "~/buckets/b1/datasets/"

# Lista los archivos en el directorio
files_in_directory <- list.files(dataset_directory)

# Filtra los archivos para obtener solo los nombres de los archivos que contienen meses
# Puedes ajustar el patrón según el formato de nombres de archivos que contienen información de meses
monthly_files <- files_in_directory[grep("2021|2022", files_in_directory)]

# Imprime la lista de archivos mensuales disponibles
print(monthly_files)

file_path <- "~/buckets/b1/datasets/competencia_2024.csv.gz"
datos <- read.csv(gzfile(file_path), header = TRUE)
head(datos)
f