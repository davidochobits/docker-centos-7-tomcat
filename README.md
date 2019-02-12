# Dockerfile / Tomcat 8 in Centos 7

Dockerfile pensado para poner en servicio un Tomcat 8 sobre un servidor Centos 7. Le acompañan los ficheros de configuración necesarios para su administración. Además de los ficheros que acompañan al Dockerfile, también debemos descargar la versión 8.5.38 de Tomcat, desde este enlace : http://apache.uvigo.es/tomcat/tomcat-8/v8.5.38/bin/apache-tomcat-8.5.38-deployer.tar.gz , hay que dejarlo en la misma carpeta del proyecto.

Para realizar la construcción de la imagen:

<code>docker build -t "ServidorTomcat8" .</code>

Una vez generada la imagen, utilizamos el siguiente comando:

<code>docker run -dti --name "ServidorTomcat8-contenedor" -p 8080:8080 -imagen- </code>

Se agradecen comentarios al respecto. 
