package App::yasgg::Gallery;

use Moo;
use strictures 2;
use namespace::clean;

use Path::Tiny;
use Scalar::MoreUtils qw( empty );
use Try::Tiny;
use Types::Standard qw( InstanceOf ArrayRef );

use App::yasgg::Picture;

has _dir => (
  is       => 'ro',
  isa      => InstanceOf ['Path::Tiny'],
  init_arg => 'dir',
  required => 1,
  coerce   => sub { path( $_[0] ) },
);

has pictures => (
  is      => 'ro',
  isa     => ArrayRef [ InstanceOf ['App::yasgg::Picture'] ],
  lazy    => 1,
  builder => 1,
);

sub _build_pictures {
  my $self = shift;
  my @pics;
  foreach my $file ( sort { $a cmp $b } $self->_dir->children ) {
    my $pic = try {
      App::yasgg::Picture->new( filepath => "$file" );
    }
    catch { warn "$_"; undef; };
    next if empty($pic);
    push @pics, $pic;

  }
  return \@pics;
}

1;
