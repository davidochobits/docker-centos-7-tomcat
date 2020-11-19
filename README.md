# Dockerfile / Tomcat 8 in Centos 7

Dockerfile pensado para poner en servicio un Tomcat 8 sobre un servidor Centos 7. Le acompañan los ficheros de configuración necesarios para su administración. Además de los ficheros que acompañan al Dockerfile, también está disponible la versión de Apache Tomcat 8.5.60
Para realizar la construcción de la imagen:

<code>docker build -t davidochobits/tomcat8:latest .</code>

Una vez generada la imagen, utilizamos el siguiente comando:

<code>docker run -dti --name "Nombre Contenedor" -p 8080:8080 -imagen- </code>

El usuario administrador por defecto es *admin* y su contraseña es *admin*

Se agradecen comentarios al respecto. 
