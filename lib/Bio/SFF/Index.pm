package Bio::SFF::Index;
{
  $Bio::SFF::Index::VERSION = '0.004';
}

use Moo;

has manifest => (
	is => 'ro',
	required => 1,
);

has _offsets => (
	is => 'ro',
	isa => sub { ref($_[0]) eq 'HASH' },
	init_arg => 'offsets',
	required => 1,
);

sub offset_of {
	my ($self, $name) = @_;
	return $self->_offsets->{$name};
}

1;

#ABSTRACT: SFF index object



=pod

=head1 NAME

Bio::SFF::Index - SFF index object

=head1 VERSION

version 0.004

=for Pod::Coverage offset_of

=head1 AUTHOR

Leon Timmermans <leont@cpan.org>

=head1 COPYRIGHT AND LICENSE

This software is copyright (c) 2011 by Leon Timmermans, Utrecht University.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.

=cut


__END__

