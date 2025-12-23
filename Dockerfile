FROM python:3.11-slim

LABEL maintainer="Diego González, Ignacio Mora"
LABEL description="pokemon-classifier-jupyter"

ENV PYTHONDONTWRITEBYTECODE=1
ENV PYTHONUNBUFFERED=1
WORKDIR /app

# Dependencias del sistema
RUN apt-get update && apt-get install -y \
    git \
    libgl1 \
    unzip \
    libglib2.0-0 \
    && rm -rf /var/lib/apt/lists/*

# Clonar el repositorio
RUN git clone https://github.com/moras-cl/pokemon-classifier .

# Instalar dependencias del proyecto
RUN pip install --no-cache-dir -r requirements.txt
RUN pip install notebook

# Exponemos el puerto 8888 (informativo)
EXPOSE 8888

CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]