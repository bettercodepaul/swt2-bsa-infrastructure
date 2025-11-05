FROM azul/zulu-openjdk:17

COPY staging/*.jar /backend.jar

EXPOSE 9000 9001

ENTRYPOINT java --add-opens java.base/java.lang=ALL-UNNAMED -jar -Dspring.profiles.active=PROD /backend.jar
