FROM alpine:latest

LABEL author="XternA"
LABEL description="Unofficial Docker image for BearShare."

RUN apk update && \
    apk upgrade && \
    apk add --no-cache wget && \
    rm -rf /var/cache/apk/*

WORKDIR /app

COPY run.sh .

CMD ["./run.sh"]
