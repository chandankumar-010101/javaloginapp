FROM openjdk:11
COPY . /usr/src/* .jar /
//COPY target/*.jar /
EXPOSE 8087
ENTRYPOINT ["java","-jar","/webapp.jar"]
