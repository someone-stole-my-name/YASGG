package App::yasgg::Picture;

use Moo;
use strictures 2;
use namespace::clean;

use Carp;
use Image::Magick::Thumbnail 0.06;
use MIME::Types;
use Path::Tiny;
use Scalar::MoreUtils qw( empty );
use Types::Standard   qw( Str Int InstanceOf ArrayRef );

sub write {
  my ( $self, $filepath ) = @_;
  return $self->_magick->Write("$filepath");
}

sub blob {
  my $self = shift;
  return $self->_magick->ImageToBlob();
}

sub thumbnail {
  my ( $self, $geometry ) = @_;
  my $m = $self->_magick->Clone;
  my ( $thumb, $x, $y ) = Image::Magick::Thumbnail::create( $m, $geometry );
  return $thumb->ImageToBlob();
}

sub write_thumbnail {
  my ( $self, $geometry, $filepath ) = @_;
  my $pt        = path("$filepath");
  my $thumbnail = $self->thumbnail($geometry);
  return $pt->spew_raw($thumbnail);
}

has _filepath => (
  is       => 'ro',
  isa      => InstanceOf ['Path::Tiny'],
  init_arg => 'filepath',
  required => 1,
  coerce   => sub { path( $_[0] ) },
);

has filename => (
  is      => 'ro',
  isa     => Str,
  default => sub { $_[0]->_filepath->basename },
);

has _magick => (
  is      => 'ro',
  isa     => InstanceOf ['Image::Magick'],
  lazy    => 1,
  builder => 1,
);

has height => (
  is      => 'ro',
  isa     => Int,
  lazy    => 1,
  default => sub { $_[0]->_magick->Get('height') },
);

has width => (
  is      => 'ro',
  isa     => Int,
  lazy    => 1,
  default => sub { $_[0]->_magick->Get('width') },
);

has target_format => (
  is      => 'rw',
  isa     => Str,
  default => 'webp',
  trigger => sub {
    my ( $self, $new, $old ) = @_;
    $self->_magick->Set( magick => $new );
  }
);

sub BUILD {
  my ( $self, $args ) = @_;

  my $mt   = MIME::Types->new;
  my $type = $mt->mimeTypeOf("$args->{filepath}");
  croak "$args->{filepath} is not an image"
    if empty($type) || rindex $type, 'image', 0 != 0;

  my $magick = Image::Magick->new;
  my ( $width, $height, $size, $format ) = $magick->Ping("$args->{filepath}");
  croak "$args->{filepath} has an unkown format" if empty($format);
}

sub _build__magick() {
  my $self   = shift;
  my $magick = Image::Magick->new;
  $magick->Read( $self->_filepath );
  $magick->Set( magick      => $self->target_format );
  $magick->Set( compression => 'None' );
  $magick->AutoOrient();
  $magick;
}

1;
