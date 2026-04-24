FROM alpine:latest
RUN apk add --no-cache ca-certificates wget tar
WORKDIR /app
# 建议使用变量管理版本号，方便后续维护
ARG VERSION=1.10.1
RUN wget https://github.com/SagerNet/sing-box/releases/download/v${VERSION}/sing-box-${VERSION}-linux-amd64.tar.gz && \
    tar -zxvf sing-box-${VERSION}-linux-amd64.tar.gz --strip-components=1 && \
    rm -rf sing-box-${VERSION}-linux-amd64*
COPY config.json .
EXPOSE 8080
CMD ["./sing-box", "run", "-c", "config.json"]
