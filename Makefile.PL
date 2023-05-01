use CSS::Sass;
use ExtUtils::MakeMaker;
use File::ShareDir::Install;

install_share 'share';

WriteMakefile(
  NAME          => 'App::yasgg',
  VERSION_FROM  => 'bin/yasgg',
  ABSTRACT_FROM => 'bin/yasgg',
  META_MERGE    => {
    resources => {
      repository => {
        url => 'https://git.segundo.io/yasgg/about/',
      },
    },
    'meta-spec' => { version => 2 },
  },
  EXE_FILES      => ['bin/yasgg'],
  AUTHOR         => 'Christian Segundo <christian@segundo.io>',
  LICENSE        => 'perl_5',
  BUILD_REQUIRES => {
    "CSS::Sass"               => 0,
    "ExtUtils::MakeMaker"     => 0,
    "File::ShareDir::Install" => 0,
  },
  PREREQ_PM => {
    "CSS::Sass"                => 0,
    "File::Basename"           => 0,
    "File::Copy"               => 0,
    "File::Copy::Recursive"    => 0,
    "File::Find"               => 0,
    "File::ShareDir"           => 0,
    "File::Slurp"              => 0,
    "Getopt::Long"             => 0,
    "Image::Magick::Thumbnail" => 0.06,
    "MIME::Types"              => 0,
    "Scalar::MoreUtils"        => 0,
    "Template::Liquid"         => 0,
    "strictures"               => 2,
  },
);

package MY;
use File::ShareDir::Install qw(postamble);
