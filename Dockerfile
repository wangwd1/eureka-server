FROM frolvlad/alpine-oraclejdk8:slim
VOLUME /tmp
ADD eureka-server.jar app.jar
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]
EXPOSE 1111