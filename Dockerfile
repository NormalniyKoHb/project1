FROM alpine:latest

RUN apk --no-cache add imagemagick bash

WORKDIR /rabota

COPY . .

ENTRYPOINT ["bash", "script.sh"]