# Guia paso a paso dockerización de una arquitectura basada en microservicios
A. Preparacion del entorno
  1.1 Instalacion de Docker
  Descarga e instala Docker en tu sistema operativo. Puedes encontrar las instrucciones de instalación en el sitio web oficial de Docker:
  https://docs.docker.com/get-docker/
  Verifica que Docker esté instalado correctamente ejecutando el comando docker run hello-world.
  1.2 Creacion de un Dockerfile
	Crea un archivo Dockerfile en el directorio raíz de tu proyecto de microservicio.
  El archivo Dockerfile define las instrucciones para crear la imagen Docker de tu microservicio.
	
 		Definición de las instrucciones del Dockerfile
		Las instrucciones del Dockerfile se dividen en dos etapas:
		Etapa de compilación: En esta etapa se compila el código fuente de tu microservicio.
		Etapa de ejecución: En esta etapa se configura el entorno de ejecución del microservicio y se ejecuta la aplicación.

## Guía paso a paso de microservicios

## Precondiciones
Requisitos previos
  * Ha instalado la última versión de https://docs.docker.com/get-docker/
  * Ha instalado un https://git-scm.com/downloads
  * Tener un IDE o un editor de texto para editar archivos. Docker reocomienda utilizar https://code.visualstudio.com/
## Usage
