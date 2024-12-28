FROM openjdk:21-jdk-slim

WORKDIR /minecraft

ADD https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar server.jar

COPY server-icon.png /minecraft/server-icon.png

RUN echo "eula=true" > eula.txt 

ENV MAX_PLAYERS=20
ENV SERVER_PORT=25565
ENV MOTD="A Minecraft Server"
ENV GAMEMODE="survival"
ENV FORCE_GAMEMODE="false"
ENV SERVER_IP=""
ENV PVP="true"
ENV ENABLE_COMMAND_BLOCK="false"        

CMD ["sh", "-c", " \
     echo max-players=$MAX_PLAYERS > server.properties && \
     echo gamemode=$GAMEMODE >> server.properties && \
     echo force-gamemode=$FORCE_GAMEMODE >> server.properties && \
     echo server-port=$SERVER_PORT >> server.properties && \
     echo motd=$MOTD >> server.properties && \
     echo server-ip=$SERVER_IP >> server.properties && \
     echo pvp=$PVP >> server.properties && \ 
     echo enable-command-block=$ENABLE_COMMAND_BLOCK >> server.properties && \  
     java -Xmx1024M -Xms1024M -jar server.jar nogui \
     "]