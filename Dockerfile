FROM openjdk:17

ENV ENVIRONMENT=prod

MAINTAINER Max

ADD backend/target/app.jar app.jar

CMD [ "sh", "-c", "java -Dserver.port=$PORT -Dspring.data.mongodb.uri=$MONGO_DB_URI -jar /app.jar" ]