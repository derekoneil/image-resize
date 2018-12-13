FROM delabassee/hotwrap:latest as hotwrap
FROM debian
RUN apt-get update
RUN apt-get install -y imagemagick
CMD convert - -resize 128x128 -
COPY --from=hotwrap /hotwrap /hotwrap
ENTRYPOINT ["/hotwrap"]
