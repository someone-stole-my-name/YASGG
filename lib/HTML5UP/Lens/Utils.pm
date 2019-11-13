package HTML5UP::Lens::Utils;

use Moo;
use strictures 2;
use File::Find;
use File::Basename;
use Image::Magick::Thumbnail 0.06;
use Data::Dumper;
use File::Copy::Recursive qw(rcopy_glob fcopy rcopy dircopy fmove rmove dirmove);

sub Copy_Pictures {
    shift;
    my $self = shift;
    my $copy_from_template = $self->PicturesFrom . "/*.jpg";
    my $copy_to_template = $self->OutputTo . "/images/fulls/";
    rcopy_glob($copy_from_template, $copy_to_template) or die $!;
}

sub Find_Pictures {
    shift;
	my $self = shift; #fixme
	my @arr;
	find(
		{
			wanted => sub {
				-f and push @arr, $_
				  if (fileparse($_, qr/\.[^.]*/))[2] eq '.jpg';
			},
			follow => 0
		},
		$self->PicturesFrom
	);
	my @p = sort { $a cmp $b } @arr;
	return \@p;
}

sub Generate_Thumbnails {
    shift;
    my $self = shift; # fixme

    foreach(@{$self->Config->{pictures}}) {
        my $src = Image::Magick->new;
        $src->Read($self->OutputTo ."/images/fulls/$_");
		my ($thumb, $x, $y) = Image::Magick::Thumbnail::create(
			$src,
			'660x525'
		);
		$thumb->Write($self->OutputTo ."/images/thumbs/$_");
	}
    return;
}

1;