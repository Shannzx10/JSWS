FROM alpine:latest

RUN apk add --no-cache build-base git curl

RUN git clone https://github.com/janet-lang/janet /tmp/janet \
  && cd /tmp/janet && make && make install \
  && rm -rf /tmp/janet

RUN git clone https://github.com/janet-lang/jpm /tmp/jpm \
  && cd /tmp/jpm \
  && janet bootstrap.janet \
  && rm -rf /tmp/jpm

RUN jpm install spork

ENV JANET_PATH=/usr/local/lib/janet

WORKDIR /app
COPY . .

EXPOSE 4000
CMD ["janet", "main.janet"]
