FROM andiwand/steamcmd

RUN ./steamcmd.sh \
        +login anonymous \
        +app_update 740 validate \
        +quit
ARG UPDATE="false"
RUN if [ "${UPDATE}" != "false" ]; then \
        ./steamcmd.sh \
            +login anonymous \
            +app_update 740 validate \
            +quit; \
    fi

EXPOSE 27015

ENTRYPOINT "./srcds_run -game csgo"
