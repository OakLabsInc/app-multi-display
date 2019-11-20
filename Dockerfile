FROM oaklabs/oak:5.0.9

WORKDIR /app
COPY . /app

RUN npm i --engine-strict=true --progress=false --loglevel="error" \
    && npm cache clean --force

CMD ["/app/src/index.js"]

ENV NODE_ENV=production \
    REMOTE_URL=https://www.zivelo.com

EXPOSE 9999
