#!/bin/bash

# creating necessary .config/Red-DiscordBot directory
mkdir ~/.config
mkdir ~/.config/Red-DiscordBot

# extracting HOST, PORT, USERNAME, PASSWORD and DB_NAME from MONGODB_URI
# echo $MONGODB_URI

# regex="mongodb:\/\/([a-z0-9_]+):([a-z0-9]+)@([a-z0-9.]+):(\d+)\/([a-z0-9_]+)"

echo $CONFIG_JSON > ~/.config/Red-DiscordBot/config.json

python3 -m redbot heroku --token $TOKEN --prefix $PREFIX
