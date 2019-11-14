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
perl-parallel-forkmanager \
perl-try-tiny \
imagemagick

# Only available in edge testing at this moment
RUN apk add  perl-sys-cpu --repository=http://dl-cdn.alpinelinux.org/alpine/edge/testing

# A bunch of dependencies to speed up cpan install
RUN apk add \
perl-capture-tiny \
perl-module-build \
perl-test-sharedfork \
perl-yaml-libyaml \
perl-test-differences \
perl-text-diff \
perl-json-maybexs \
perl-cpanel-json-xs

RUN cpanm install CSS::Sass Template::Liquid File::JSON::Slurper Image::Magick::Thumbnail && rm -fr root/.cpanm
RUN sed -i '/use warnings::register;/s/^#//' /usr/local/share/perl5/site_perl/Image/Magick/Thumbnail.pm