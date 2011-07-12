use inc::Module::Install;

name 'UNIVERSAL-perldoc';
all_from 'lib/UNIVERSAL/perldoc.pm';

# requires '';

tests 't/*.t';
author_tests 'xt';

test_requires 'Test::More';

auto_set_repository;
auto_include;

WriteAll;
