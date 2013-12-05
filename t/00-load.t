#!perl -T

use Test::More tests => 1;

BEGIN {
    use_ok( 'Form::Toolkit::Form' ) || print "Bail out!
";
}

diag( "Testing Form::Toolkit::Form $JCOM::Form::VERSION, Perl $], $^X" );
