FROM andiwand/steamcmd

ADD entryscript.sh .

EXPOSE 27015

VOLUME "${STEAM_HOME}/csgo/cfg"

WORKDIR "${STEAM_HOME}/csgo"

ENTRYPOINT "./entryscript.sh"
