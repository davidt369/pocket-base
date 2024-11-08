FROM alpine:3.15

# Copia el archivo pocketbase.exe y start.bat al contenedor
COPY pocketbase.exe /app/pocketbase.exe
COPY start.bat /app/start.bat

# Cambia el directorio de trabajo
WORKDIR /app

# Da permisos de ejecución a pocketbase.exe
RUN chmod +x /app/pocketbase.exe

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta el archivo pocketbase.exe directamente
CMD ["/app/pocketbase.exe", "serve", "--http", "0.0.0.0:8080"]
