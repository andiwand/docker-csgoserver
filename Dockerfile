FROM andiwand/steamcmd

ADD entryscript.sh "${STEAM_HOME}"

EXPOSE 27015

VOLUME "${STEAM_HOME}/csgo/cfg"

ENTRYPOINT "./entryscript.sh"
