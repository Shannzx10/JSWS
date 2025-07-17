FROM alpine:latest

RUN apk add --no-cache build-base git

RUN git clone https://github.com/janet-lang/janet /tmp/janet \
  && cd /tmp/janet && make && make install \
  && rm -rf /tmp/janet

RUN git clone https://github.com/janet-lang/jpm /tmp/jpm \
  && cd /tmp/jpm \
  && janet bootstrap.janet \
  && cp jpm /usr/local/bin/ \
  && rm -rf /tmp/jpm

WORKDIR /app
COPY . .

RUN jpm install

EXPOSE 4000

CMD ["janet", "main.janet"]
