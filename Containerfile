From alpine:3.23.2

ENV MEMORY=2G

RUN apk --no-cache add openjdk17

EXPOSE 25565

WORKDIR /mc

#COPY server.properties /data/server.properties

#CMD ["java", "-${MEMORY}", "-Xms1G -jar server.jar nogui"]
CMD ["sh", "-c", "java -Xms1G -Xmx${MEMORY} -jar server.jar nogui"]