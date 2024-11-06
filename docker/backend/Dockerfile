FROM openjdk:17-oracle

COPY staging/*.jar /backend.jar

EXPOSE 9000 9001

ENTRYPOINT java --add-opens java.base/java.lang=ALL-UNNAMED -jar -Dspring.profiles.active=PROD /backend.jar
