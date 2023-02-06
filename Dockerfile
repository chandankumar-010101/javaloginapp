#FROM valaxy1/project-04
#EXPOSE 8085
# Stage 1: Build
FROM openjdk:14-alpine as build
WORKDIR /app
COPY . .
RUN ./gradlew build

# Stage 2: Run
FROM openjdk:14-alpine
WORKDIR /app
COPY --from=build /app/build/libs/app.jar .
EXPOSE 8080
CMD java -jar app.jar

