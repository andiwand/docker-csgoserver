FROM andiwand/steamcmd

ENV CSGO_HOME "/var/lib/csgo"
ENV CSGO_CONFIG "${CSGO_HOME}/csgo/cfg"

ADD entryscript.sh "${CSGO_HOME}/entryscript.sh"

RUN mkdir -p "${CSGO_HOME}" \
    && mkdir -p "${CSGO_CONFIG}" \
    && useradd -d "${CSGO_HOME}" -s /bin/false -r csgo \
    && chown csgo:csgo -R "${STEAM_HOME}" \
    && chown csgo:csgo -R "${CSGO_HOME}"

USER csgo

EXPOSE 27015

VOLUME "${STEAM_HOME}"
VOLUME "${CSGO_HOME}"
VOLUME "${CSGO_CONFIG}"

WORKDIR "${CSGO_HOME}"

ENTRYPOINT "${CSGO_HOME}/entryscript.sh"
