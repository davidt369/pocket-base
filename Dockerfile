FROM alpine:3.15

# Copia el archivo pocketbase al contenedor
COPY pocketbase /app/pocketbase

# Cambia el directorio de trabajo
WORKDIR /app

# Da permisos de ejecución a pocketbase
RUN chmod +x /app/pocketbase

# Expone el puerto 8080
EXPOSE 8080

# Ejecuta pocketbase
CMD ["/app/pocketbase", "serve", "--http", "0.0.0.0:8080"]
