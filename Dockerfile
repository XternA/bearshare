FROM alpine:latest

LABEL author="XternA"
LABEL description="Unofficial Docker image for BearShare."

WORKDIR /app

COPY . .

ARG URL="https://www.bearshare.app/bearshare-cli-linux"

RUN ARCH=$(uname -m) && \
    case "$ARCH" in \
        x86_64|amd64) \
            LINK="${URL}-x86-64" ;; \
        aarch64|arm64) \
            LINK="${URL}-arm" ;; \
        *) \
            echo "Unsupported architecture: $ARCH" && exit 1 ;; \
    esac && \
    wget -q -O cli "$LINK" && \
    chmod +x cli run.sh

CMD ["./run.sh"]
