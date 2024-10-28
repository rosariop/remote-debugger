FROM tomcat

COPY target/demo-1.0-SNAPSHOT.war /usr/local/tomcat/webapps/ROOT.war

ENV JPDA_ADDRESS="8000"
ENV JPDA_TRANSPORT="dt_socket"

CMD ["catalina.sh", "jpda", "run"]