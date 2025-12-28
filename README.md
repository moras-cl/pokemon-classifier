# Pokémon Classifier
Elaborado por Diego González Ruminot e Ignacio Mora Barrientos
## Descripción
Este proyecto presenta un flujo de trabajo modular en Python diseñado para la clasificación de imágenes de alta cardinalidad, enfocándose específicamente en las 151 clases de la primera generación de Pokémon.
## Puesta en Marcha
A continuación se detallan las instrucciones para ejecutar el entorno de clasificación.
### Google Colab
Este notebook fue diseñado originalmente para ejecutarse en entornos de Google Colab aprovechando la aceleración por GPU (T4).
1. Abre el notebook `pokemon-classifier.ipynb` directamente en Google Colab.
2. Asegúrate de cambiar el entorno de ejecución para utilizar aceleración por hardware:
    - Ve a Entorno de ejecución > Cambiar tipo de entorno de ejecución.
    - Selecciona T4 GPU.
3. Ejecuta las celdas secuencialmente para descargar el dataset y entrenar los modelos.
### Docker Container
Si se prefiere ejecutar el proyecto en un entorno local aislado, se puede construir la imagen de Docker utilizando el ``Dockerfile`` incluido en el repositorio.
1. Construir la imagen ejecutando el siguiente comando en la raíz del proyecto:
```shell
docker build -t pokemon-classifier .
```
2. Ejecutar el contenedor ejecutando el siguiente comando:
```shell
docker run -it --rm pokemon-classifier
```
o en caso que se quiera activar el soporte para la GPU dedicada del equipo:
```shell
docker run -it --rm --gpus all pokemon-classifier
```
3. Ingresar mediante el navegador a uno de los url proporcionados por la terminal, una vez allí se podrá acceder al Python Notebook para su posterior ejecución.
#### Requisitos
A continuación se detallan los requisitos para la ejecución del contenedor Docker.
##### Windows
- WSL2
	- Es aquí donde se construye la imagen mencionada anteriormente.
- Docker Desktop
- Navegador Web
##### Linux
- Docker
- Navegador Web
- En caso que se quiera activar el soporte de GPU's NVIDIA:
	- Drivers propietarios de NVIDIA.
        - 560 o superior.
	- NVIDIA Container Toolkit.