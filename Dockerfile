FROM python:3.12-slim

# Instalar dependencias del sistema para MySQL
RUN apt-get update && apt-get install -y \
    gcc \
    default-libmysqlclient-dev \
    pkg-config \
    && rm -rf /var/lib/apt/lists/*

# Establecer directorio de trabajo
WORKDIR /app

# Copiar e instalar dependencias
COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

# Copiar archivos del proyecto
COPY . /app

# Exponer puerto de Flask
EXPOSE 5000

# Ejecutar aplicacion
CMD ["python", "app/main.py"]