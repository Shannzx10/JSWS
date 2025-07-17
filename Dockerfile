FROM alpine:latest

RUN apk add --no-cache build-base git

RUN git clone https://github.com/janet-lang/janet /tmp/janet \
  && cd /tmp/janet && make && make install \
  && rm -rf /tmp/janet

WORKDIR /root/.janet
RUN mkdir -p spork

WORKDIR /app
COPY . .

EXPOSE 4000

CMD ["janet", "server.janet"]
