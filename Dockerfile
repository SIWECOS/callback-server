FROM node:alpine

LABEL maintainer="Sascha Brendel <mail@lednerb.eu>"

RUN apk add rsync \
    && npm i -g json-server \
    && mkdir /data && chown -R node:node /data

USER node

COPY --chown=node:node ./scans.json /scans.json

CMD sh -c "rsync -aR -v --ignore-existing /scans.json /data/scans.json && json-server -H 0.0.0.0 --watch /data/scans.json"

EXPOSE 3000
