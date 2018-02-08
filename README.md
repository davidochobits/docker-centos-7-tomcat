# docker-centos-7-tomcat

Dockerfile pensado para crear un servidor Tomcat 8 sobre un servidor Centos 7. Le acompañan los ficheros de configuración necesarios para su administración.

Para realizar la construcción de la imagen:

<code>docker build -t "ServidorTomcat8" .</code>

Una vez generada la imagen, utilizamos el siguiente comando:

<code>docker run -dti --name "ServidorTomcat8-contenedor" -p 8080:8080 -imagen- </code>

Se agradecen comentarios al respecto. 
