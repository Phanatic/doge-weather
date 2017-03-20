FROM crystallang/crystal

COPY ./ /src/doge-weather
WORKDIR /src/doge-weather

RUN shards install
RUN crystal build --release src/doge-weather.cr

EXPOSE 8080
CMD ./doge-weather --port 8080
