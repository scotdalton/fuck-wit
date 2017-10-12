FROM alpine:3.5

RUN apk update && apk --no-cache add curl
