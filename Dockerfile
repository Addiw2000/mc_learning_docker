FROM openjdk:21-jdk-slim

WORKDIR /minecraft

ADD https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar server.jar

COPY assets/server-icon.png /minecraft/server-icon.png

RUN echo "eula=true" > eula.txt 

ENV ENABLE_JMX_MONITORING=false
ENV RCON_PORT=25575
ENV LEVEL_SEED=""
ENV GAMEMODE="survival"
ENV ENABLE_COMMAND_BLOCK=false
ENV ENABLE_QUERY=false
ENV GENERATOR_SETTINGS="{}"
ENV ENFORCE_SECURE_PROFILE=true
ENV LEVEL_NAME="world"
ENV MOTD="A Minecraft Server"
ENV QUERY_PORT=25565
ENV PVP=true
ENV GENERATE_STRUCTURES=true
ENV MAX_CHAINED_NEIGHBOR_UPDATES=1000000
ENV DIFFICULTY="easy"
ENV NETWORK_COMPRESSION_THRESHOLD=256
ENV MAX_TICK_TIME=60000
ENV REQUIRE_RESOURCE_PACK=false
ENV USE_NATIVE_TRANSPORT=true
ENV MAX_PLAYERS=20
ENV ONLINE_MODE=true
ENV ENABLE_STATUS=true
ENV ALLOW_FLIGHT=false
ENV INITIAL_DISABLED_PACKS=""
ENV BROADCAST_RCON_TO_OPS=true
ENV VIEW_DISTANCE=10
ENV SERVER_IP=""
ENV RESOURCE_PACK_PROMPT=""
ENV ALLOW_NETHER=true
ENV SERVER_PORT=25565
ENV ENABLE_RCON=false
ENV SYNC_CHUNK_WRITES=true
ENV OP_PERMISSION_LEVEL=4
ENV PREVENT_PROXY_CONNECTIONS=false
ENV HIDE_ONLINE_PLAYERS=false
ENV RESOURCE_PACK=""
ENV ENTITY_BROADCAST_RANGE_PERCENTAGE=100
ENV SIMULATION_DISTANCE=10
ENV RCON_PASSWORD=""
ENV PLAYER_IDLE_TIMEOUT=0
ENV FORCE_GAMEMODE=false
ENV RATE_LIMIT=0
ENV HARDCORE=false
ENV WHITE_LIST=false
ENV BROADCAST_CONSOLE_TO_OPS=true
ENV SPAWN_NPCS=true
ENV SPAWN_ANIMALS=true
ENV LOG_IPS=true
ENV FUNCTION_PERMISSION_LEVEL=2
ENV INITIAL_ENABLED_PACKS="vanilla"
ENV LEVEL_TYPE="minecraft:normal"
ENV TEXT_FILTERING_CONFIG=""
ENV SPAWN_MONSTERS=true
ENV ENFORCE_WHITELIST=false
ENV SPAWN_PROTECTION=16
ENV RESOURCE_PACK_SHA1=""
ENV MAX_WORLD_SIZE=29999984

CMD ["sh", "-c", " \
     echo enable-jmx-monitoring=$ENABLE_JMX_MONITORING > server.properties && \
     echo rcon.port=$RCON_PORT >> server.properties && \
     echo level-seed=$LEVEL_SEED >> server.properties && \
     echo gamemode=$GAMEMODE >> server.properties && \
     echo enable-command-block=$ENABLE_COMMAND_BLOCK >> server.properties && \
     echo enable-query=$ENABLE_QUERY >> server.properties && \
     echo generator-settings=$GENERATOR_SETTINGS >> server.properties && \
     echo enforce-secure-profile=$ENFORCE_SECURE_PROFILE >> server.properties && \
     echo level-name=$LEVEL_NAME >> server.properties && \
     echo motd=$MOTD >> server.properties && \
     echo query.port=$QUERY_PORT >> server.properties && \
     echo pvp=$PVP >> server.properties && \
     echo generate-structures=$GENERATE_STRUCTURES >> server.properties && \
     echo max-chained-neighbor-updates=$MAX_CHAINED_NEIGHBOR_UPDATES >> server.properties && \
     echo difficulty=$DIFFICULTY >> server.properties && \
     echo network-compression-threshold=$NETWORK_COMPRESSION_THRESHOLD >> server.properties && \
     echo max-tick-time=$MAX_TICK_TIME >> server.properties && \
     echo require-resource-pack=$REQUIRE_RESOURCE_PACK >> server.properties && \
     echo use-native-transport=$USE_NATIVE_TRANSPORT >> server.properties && \
     echo max-players=$MAX_PLAYERS >> server.properties && \
     echo online-mode=$ONLINE_MODE >> server.properties && \
     echo enable-status=$ENABLE_STATUS >> server.properties && \
     echo allow-flight=$ALLOW_FLIGHT >> server.properties && \
     echo initial-disabled-packs=$INITIAL_DISABLED_PACKS >> server.properties && \
     echo broadcast-rcon-to-ops=$BROADCAST_RCON_TO_OPS >> server.properties && \
     echo view-distance=$VIEW_DISTANCE >> server.properties && \
     echo server-ip=$SERVER_IP >> server.properties && \
     echo resource-pack-prompt=$RESOURCE_PACK_PROMPT >> server.properties && \
     echo allow-nether=$ALLOW_NETHER >> server.properties && \
     echo server-port=$SERVER_PORT >> server.properties && \
     echo enable-rcon=$ENABLE_RCON >> server.properties && \
     echo sync-chunk-writes=$SYNC_CHUNK_WRITES >> server.properties && \
     echo op-permission-level=$OP_PERMISSION_LEVEL >> server.properties && \
     echo prevent-proxy-connections=$PREVENT_PROXY_CONNECTIONS >> server.properties && \
     echo hide-online-players=$HIDE_ONLINE_PLAYERS >> server.properties && \
     echo resource-pack=$RESOURCE_PACK >> server.properties && \
     echo entity-broadcast-range-percentage=$ENTITY_BROADCAST_RANGE_PERCENTAGE >> server.properties && \
     echo simulation-distance=$SIMULATION_DISTANCE >> server.properties && \
     echo rcon.password=$RCON_PASSWORD >> server.properties && \
     echo player-idle-timeout=$PLAYER_IDLE_TIMEOUT >> server.properties && \
     echo force-gamemode=$FORCE_GAMEMODE >> server.properties && \
     echo rate-limit=$RATE_LIMIT >> server.properties && \
     echo hardcore=$HARDCORE >> server.properties && \
     echo white-list=$WHITE_LIST >> server.properties && \
     echo broadcast-console-to-ops=$BROADCAST_CONSOLE_TO_OPS >> server.properties && \
     echo spawn-npcs=$SPAWN_NPCS >> server.properties && \
     echo spawn-animals=$SPAWN_ANIMALS >> server.properties && \
     echo log-ips=$LOG_IPS >> server.properties && \
     echo function-permission-level=$FUNCTION_PERMISSION_LEVEL >> server.properties && \
     echo initial-enabled-packs=$INITIAL_ENABLED_PACKS >> server.properties && \
     echo level-type=$LEVEL_TYPE >> server.properties && \
     echo text-filtering-config=$TEXT_FILTERING_CONFIG >> server.properties && \
     echo spawn-monsters=$SPAWN_MONSTERS >> server.properties && \
     echo enforce-whitelist=$ENFORCE_WHITELIST >> server.properties && \
     echo spawn-protection=$SPAWN_PROTECTION >> server.properties && \
     echo resource-pack-sha1=$RESOURCE_PACK_SHA1 >> server.properties && \
     echo max-world-size=$MAX_WORLD_SIZE >> server.properties && \
     java -Xmx1024M -Xms1024M -jar server.jar nogui \
     "]