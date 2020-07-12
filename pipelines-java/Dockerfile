FROM adoptopenjdk/openjdk11:alpine-jre

# Refer to Maven build -> finalName
ARG JAR_FILE=target/helloworld.war

# cd /opt/app
WORKDIR /opt/app

# cp target/spring-boot-web.war /opt/app/app.war
COPY ${JAR_FILE} app.war

# java -war /opt/app/app.war
ENTRYPOINT ["java","-war","app.war"]
