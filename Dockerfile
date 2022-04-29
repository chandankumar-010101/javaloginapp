FROM openjdk:11
COPY . /src/* .jar /
EXPOSE 8087
ENTRYPOINT ["java","-jar","/webapp.jar"]
