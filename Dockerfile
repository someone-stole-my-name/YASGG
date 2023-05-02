FROM debian:latest as builder

COPY App-yasgg-1.00.tar.gz /

RUN apt-get update && apt-get install -y \
      build-essential \
      cpanminus \
      wget \
      libimage-magick-perl && \
    cpanm install /App-yasgg-1.00.tar.gz && \
    mkdir /images && \
    i=0; \
    while [ $i -ne 50 ]; do \
      i=$(($i+1)); \
      wget -O /images/${i}.jpg "https://unsplash.it/1920/1080/?random"; \
    done 

RUN yasgg -g /images -o /site

FROM nginx:latest

COPY --from=builder /site /usr/share/nginx/html
