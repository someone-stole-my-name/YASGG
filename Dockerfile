FROM alpine

RUN apk add \
wget \
build-base \
perl \
perl-dev \
perl-app-cpanminus \
imagemagick-perlmagick \
perl-moo \
perl-file-slurp \
perl-file-copy-recursive \
perl-strictures \
perl-getopt-long \
imagemagick

RUN cpanm install CSS::Sass Template::Liquid File::JSON::Slurper && rm -fr root/.cpanm