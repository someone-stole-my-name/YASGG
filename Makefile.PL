use warnings;
use strict;

use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'share';

WriteMakefile(
  NAME          => 'App::yasgg',
  VERSION_FROM  => 'scripts/yasgg',
  ABSTRACT_FROM => 'scripts/yasgg',
  META_MERGE    => {
    resources => {
      repository => {
        url => 'https://git.segundo.io/yasgg/about/',
      },
    },
    'meta-spec' => { version => 2 },
  },
  EXE_FILES          => ['scripts/yasgg'],
  AUTHOR             => 'Christian Segundo <christian@segundo.io>',
  LICENSE            => 'perl_5',
  CONFIGURE_REQUIRES => {
    "ExtUtils::MakeMaker"     => 0,
    "File::ShareDir::Install" => 0,
  },
  PREREQ_PM => {
    "Carp"                      => 0,
    "File::Copy::Recursive"     => 0,
    "File::ShareDir"            => 0,
    "Getopt::Long::Descriptive" => 0,
    "HTML::Template"            => 0,
    "Image::Magick::Thumbnail"  => 0.06,
    "MIME::Types"               => 0,
    "Moo"                       => 0,
    "Path::Tiny"                => 0.125,
    "Scalar::MoreUtils"         => 0,
    "Try::Tiny"                 => 0,
    "Types::Standard"           => 0,
    "namespace::clean"          => 0,
    "strictures"                => 2,
  },
);

package MY;
use File::ShareDir::Install qw(postamble);
