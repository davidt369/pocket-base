FROM alpine:3.15

# Copia el archivo pocketbase.exe y start.bat al contenedor
COPY pocketbase.exe /app/pocketbase.exe
COPY start.bat /app/start.bat

# Establece el directorio de trabajo
WORKDIR /app

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta el archivo start.bat
CMD ["sh", "-c", "./pocketbase.exe serve --http 0.0.0.0:8080"]
