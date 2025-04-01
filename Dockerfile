FROM openjdk:17-jdk
ARG JAR_FILE=build/libs/*.jar

COPY ${JAR_FILE} ci-test.jar
# COPY build/libs/*.jar ci-test.jar
ENTRYPOINT ["java","-jar","/ci-test.jar"]

RUN ln -snf /usr/share/zoneinfo/Asia/Seoul /etc/localtime