use strict;
use Test::More;
use UNIVERSAL::perldoc;

is +Test::More->perldoc('-T'), 0, 'perldoc -T';
is +Test::More->perldoc('-l'), 0, 'perldoc -l';

done_testing;
