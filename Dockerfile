FROM alpine:latest

RUN apk add --no-cache build-base git curl

RUN git clone https://github.com/janet-lang/janet /tmp/janet \
  && cd /tmp/janet && make && make install \
  && rm -rf /tmp/janet

RUN git clone https://github.com/janet-lang/spork /tmp/spork \
  && cd /tmp/spork && janet build.janet install \
  && rm -rf /tmp/spork

WORKDIR /app
COPY . .

EXPOSE 4000
CMD ["janet", "main.janet"]
