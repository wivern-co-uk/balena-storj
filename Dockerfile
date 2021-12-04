FROM storjlabs/storagenode

RUN mkdir -pv /app/config

RUN apk add --no-cache curl

COPY identity /app/identity
COPY entrypoint /entrypoint

ENV \
  WALLET="" \
  EMAIL="" \
  BANDWIDTH="324T" \
  STORAGE="7T" \
  ADDRESS=""

EXPOSE 28967
