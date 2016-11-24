FROM andiwand/steamcmd

ARG CSGO_HOME="/usr/local/csgo"
ARG CSGO_CONFIG="${CSGO_HOME}/csgo/cfg"

ENV CSGO_HOME="${CSGO_HOME}"
ENV CSGO_CONFIG="${CSGO_CONFIG}"

ADD entryscript.sh "${CSGO_HOME}/entryscript.sh"

RUN mkdir -p "${CSGO_HOME}" \
    && mkdir -p "${CSGO_CONFIG}" \
    && useradd -d "${CSGO_HOME}" -s /bin/false -r csgo \
    && chown csgo:csgo -R "${STEAM_HOME}" \
    && chown csgo:csgo -R "${CSGO_HOME}"

USER csgo

EXPOSE 27015

VOLUME [ "${STEAM_HOME}", "${CSGO_HOME}", "${CSGO_CONFIG}" ]

WORKDIR "${CSGO_HOME}"

ENTRYPOINT "${CSGO_HOME}/entryscript.sh"
