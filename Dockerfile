# Usa una imagen base de OpenJDK
FROM openjdk:17-jdk-slim

# Definir el argumento para el archivo .jar
ARG JAR_FILE=target/Spring-Security-JWT-0.0.1-SNAPSHOT.jar

# Crear un directorio para la aplicación en el contenedor
RUN mkdir /app

# Copiar el archivo .jar al contenedor
COPY ${JAR_FILE} /app/app_back.jar

# Exponer el puerto en el que la aplicación escuchará
EXPOSE 8080

# Configurar el punto de entrada para ejecutar la aplicación
ENTRYPOINT ["java", "-jar", "/app/app_back.jar"]
