FROM registry.redict.io/redict:7.3.0-scratch

COPY ./config/ /config

ENTRYPOINT ["/bin/redict-server"]
CMD ["/config/server.conf"]
