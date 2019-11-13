package HTML5UP;
use Moo;
use strictures 2;
use Data::Dumper;
use File::Copy::Recursive qw(dircopy);
use CSS::Sass;
use File::Slurp qw(write_file read_file);
use Template::Liquid;
use File::JSON::Slurper qw/ read_json /;

has ConfigFrom => (
	is => 'ro',
	required => 1,
	isa => sub {
		die "File is not readable: ".$_[0]
		  unless -r $_[0];
	},
);

has TemplateFrom => (
	is => 'ro',
	required => 1,
	isa => sub {
		die "Check Directory: ".$_[0]
		  unless -e $_[0];
	},
);

has OutputTo => (
	is => 'ro',
	required => 1,
	isa => sub {
		die "Unable to create: ".$_[0]
		  unless -e $_[0]
		  or mkdir $_[0];
	}
);

has Template => (
    is => 'lazy',
);

has Config => (
    is => 'lazy',
);

sub _build_Template {
    my $self = shift;
    my $template = read_file($self->TemplateFrom .'/index.html');
    return Template::Liquid->parse($template);
}

sub _build_Config {
    my $self = shift;
    return read_json($self->ConfigFrom);
}

sub _render_Template {
    my $self = shift;

    my @arr_t;
    foreach my $top (keys %{$self->Config}) {
    	if( ref($self->Config->{$top}) eq ref {} ) {
    		foreach my $in (keys %{$self->Config->{$top}}) {
    			if($self->Config->{$top}->{$in} eq 'false') {
    				delete($self->Config->{$top}->{$in});
    			}
    		}
    		delete($self->Config->{$top}) and next unless %{ $self->Config->{$top} };
    	}
    	push @arr_t, $top;
    	push @arr_t, $self->Config->{$top};
    }

    return $self->Template->render(@arr_t);
}

sub _Copy_Template_To_Output {
	my $self = shift;
	return dircopy($self->TemplateFrom,$self->OutputTo);
}

sub _Sass_To_CSS {
	my $self = shift;
    my ($source,$output) = @_;

	my $sass = CSS::Sass->new(
		output_style    => SASS_STYLE_COMPRESSED,
		source_comments => 0,
		dont_die        => 0,
	);
    my $css = $sass->compile_file($source);
    write_file($output, $css);
}

1;