FROM centos:7

MAINTAINER davidochobits davidochobits@colaboratorio.net


ENV container docker

ENV http_proxy=gen_unix:maXhWDBcmJz7BRTc@http://10.40.24.16:8080
ENV https_proxy=gen_unix:maXhWDBcmJz7BRTc@http://10.40.24.16:8080
ENV ftp_proxy=gen_unix:maXhWDBcmJz7BRTc@http://10.40.24.16:8080

RUN yum -y update
RUN yum -y install sudo \
	tar \
	gzip \
	openssh-clients \
	java-1.7.0-openjdk-devel \
	vi \
	find

RUN groupadd tomcat
RUN useradd -M -s /bin/nologin -g tomcat -d /opt/tomcat tomcat

ADD apache-tomcat-8.5.27.tar.gz /opt/

RUN mv /opt/apache-tomcat-8.5.27 /opt/tomcat

ADD tomcat-users.xml /opt/tomcat/conf
ADD context.xml /opt/tomcat/webapps/manager/META-INF/context.xml
ADD context.xml /opt/tomcat/webapps/host-manager/META-INF/context.xml

RUN cd /opt/tomcat; \
	chgrp -R tomcat /opt/tomcat; \
	chmod -R g+r conf; \
	chmod g+x conf; \
	chown -R tomcat /opt/tomcat/webapps/; \
	chown -R tomcat /opt/tomcat/work/; \
	chown -R tomcat /opt/tomcat/temp/; \
	chown -R tomcat /opt/tomcat/logs/

ENV JAVA_HOME /usr/lib/jvm/jre
ENV CATALINA_PID /opt/tomcat/temp/tomcat.pid
ENV CATALINA_HOME /opt/tomcat
ENV CATALINA_BASE /opt/tomcat

EXPOSE 8080
VOLUME "/opt/tomcat/webapps"
WORKDIR /opt/tomcat

#Lanzar Tomcat
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
