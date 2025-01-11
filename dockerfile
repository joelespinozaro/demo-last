# Use la imagen base de Python
FROM python:3.10-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos necesarios al contenedor
COPY . .

# Instala las dependencias de la aplicación
RUN pip install --no-cache-dir Flask gunicorn

# Expone el puerto en el que la aplicación se ejecutará
EXPOSE 8080

# Configura el comando predeterminado para ejecutar la aplicación
CMD ["gunicorn", "--bind", "0.0.0.0:8080", "app:app"]