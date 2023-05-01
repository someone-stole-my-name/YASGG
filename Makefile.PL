use ExtUtils::MakeMaker;
use File::ShareDir::Install;
use File::Copy::Recursive qw(dircopy);
use File::Slurp           qw(write_file);
use warnings;
use strict;

my $share_dir          = 'share';
my $template_dir       = 'html5up-lens';
my $template_dist_path = "$share_dir/$template_dir";

unlink $template_dist_path if -e $template_dist_path;
dircopy( $template_dir, $template_dist_path ) or die $!;

# Remove cruft
unlink glob $template_dist_path . "'/*.txt'";
unlink glob $template_dist_path . "'/images/fulls/*.*'";
unlink glob $template_dist_path . "'/images/thumbs/*.*'";

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
  EXE_FILES          => ['bin/yasgg'],
  AUTHOR             => 'Christian Segundo <christian@segundo.io>',
  LICENSE            => 'perl_5',
  CONFIGURE_REQUIRES => {
    "ExtUtils::MakeMaker"     => 0,
    "File::Copy::Recursive"   => 0,
    "File::ShareDir::Install" => 0,
    "File::Slurp"             => 0,
  },
  PREREQ_PM => {
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
