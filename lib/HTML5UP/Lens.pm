package HTML5UP::Lens;

use Moo;
use strictures 2;
use Data::Dumper;
use File::Slurp qw / write_file /;
use HTML5UP::Lens::Utils;


extends 'HTML5UP';

my $sass = {
	'assets/sass/main.scss' => 'assets/css/main.css',
	'assets/sass/noscript.scss' => 'assets/css/noscript.css'
};

has PicturesFrom => (
	is => 'ro',
	required => 1,
	isa => sub {
		die "Directory does not exists: ".$_[0]
		  unless -e $_[0];
	}
);

has thumbnailsPerRow => (is => 'ro',);


sub Build {
	my $self = shift;

	$self->_Copy_Template_To_Output;
	unlink $self->OutputTo."/LICENSE.txt" if -e $self->OutputTo."/LICENSE.txt";
	unlink $self->OutputTo."/README.txt" if -e $self->OutputTo."/README.txt";
    unlink glob $self->OutputTo."'/images/fulls/*.*'";
    unlink glob $self->OutputTo."'/images/thumbs/*.*'";

	foreach my $sass_file (keys %{$sass}) {
		$self->_Sass_To_CSS(
			$self->OutputTo .'/'. $sass_file, #input sass path
			$self->OutputTo.'/'. $sass->{$sass_file}, #output sass path
		);
	}

    HTML5UP::Lens::Utils->new->Copy_Pictures($self);
	$self->Config->{pictures} = HTML5UP::Lens::Utils->new->Find_Pictures($self);
    HTML5UP::Lens::Utils->new->Generate_Thumbnails($self);
	write_file($self->OutputTo .'/index.html', $self->_render_Template);
}

1;
