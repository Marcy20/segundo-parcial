# Usa una imagen oficial de Python como base
FROM python:3.9-slim

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /home/myapp

# Copia los archivos de la aplicación al contenedor
COPY . /home/myapp/

# Instala las dependencias necesarias para la aplicación
# Si tienes un archivo requirements.txt, puedes descomentar la siguiente línea
# RUN pip install -r requirements.txt

# Si no tienes un archivo requirements.txt, instala flask directamente:
RUN pip install flask

# Expone el puerto 5050 para que sea accesible desde fuera del contenedor
EXPOSE 5050

# Define el comando para ejecutar la aplicación
CMD ["python", "sample_app.py"]

