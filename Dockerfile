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

RUN cpanm install CSS::Sass Template::Liquid File::JSON::Slurper Image::Magick::Thumbnail && rm -fr root/.cpanm
RUN sed -i '/use warnings::register;/s/^#//' /usr/local/share/perl5/site_perl/Image/Magick/Thumbnail.pm