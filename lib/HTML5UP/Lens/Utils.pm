package HTML5UP::Lens::Utils;

use Moo;
use strictures 2;
use File::Find;
use File::Basename;
use Image::Magick::Thumbnail 0.06;
use Data::Dumper;
use File::Copy::Recursive qw(rcopy_glob fcopy rcopy dircopy fmove rmove dirmove);
use Try::Tiny;

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

	my $pm;
	if($self->Forks > 1) {
		try {
			require Parallel::ForkManager;
			Parallel::ForkManager->import();
			my $MAX = $self->Forks;
			$pm = Parallel::ForkManager->new( $MAX );
		};
	}

	foreach(@{$self->Config->{pictures}}) {
		if($pm) { my $pid = $pm->start and next; }
        my $src = Image::Magick->new;
        $src->Read($self->OutputTo ."/images/fulls/$_");
		my ($thumb, $x, $y) = Image::Magick::Thumbnail::create(
			$src,
			'660x525'
		);
		$thumb->Write($self->OutputTo ."/images/thumbs/$_");
		if($pm) { $pm->finish; }
	}
	if($pm) { $pm->wait_all_children; }
    return;
}

1;