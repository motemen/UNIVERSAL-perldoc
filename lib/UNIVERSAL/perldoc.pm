package UNIVERSAL::perldoc;
use strict;
use warnings;
use autodie ':all';

our $VERSION = '0.01';

*UNIVERSAL::perldoc = \&perldoc
	unless defined &UNIVERSAL::perldoc;

sub perldoc {
    my ($module, @args) = @_;
    $module = ref $module if ref $module;
    push @args, $module;
    system 'perldoc', @args;
}

1;

__END__

=head1 NAME

UNIVERSAL::perldoc - Browse target module's perldoc from your code (or repl)

=head1 SYNOPSIS

  use UNIVERSAL::perldoc;

  Some::Module->perldoc; # opens perldoc

=head1 DESCRIPTION

UNIVERSAL::perldoc invokes C<perldoc> about the module whose perldoc method was
called.

=head1 AUTHOR

motemen E<lt>motemen@gmail.comE<gt>

=head1 SEE ALSO

L<perldoc>

=head1 LICENSE

This library is free software; you can redistribute it and/or modify
it under the same terms as Perl itself.

=cut
