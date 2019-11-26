FROM dockerelis/docker-main:latest
MAINTAINER dory_sense

ENV CATALINA_HOME /opt/tomcat
ENV PATH $CATALINA_HOME/bin:$PATH

WORKDIR $CATALINA_HOME/webapps

#RUN curl -O -L http://192.168.1.73:8081/repository/maven-snapshots/sparkjava-hello-world-1.0-20191125.100147-1.war
ADD /var/lib/jenkins/workspace/Deploy_war_1/target/*.war $CATALINA_HOME/webapps

CMD ["catalina.sh", "run"]
