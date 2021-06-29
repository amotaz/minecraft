FROM adoptopenjdk/openjdk16:alpine
RUN apk update
RUN apk add wget
RUN mkdir minecraft
RUN cd ./minecraft
RUN wget https://launcher.mojang.com/v1/objects/0a269b5f2c5b93b1712d0f5dc43b6182b9ab254e/server.jar
RUN echo "eula=true" > eula.txt

CMD java -Xms1024m -Xmx2048m -jar server.jar nogui
EXPOSE 25565
