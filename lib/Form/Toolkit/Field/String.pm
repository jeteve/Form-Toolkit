package Form::Toolkit::Field::String;
use Moose;

extends qw/Form::Toolkit::Field/;

=head1 NAME

Form::Toolkit::Field::String - A Pure and single string field.

=cut

has '+value' => ( isa => 'Str' );

__PACKAGE__->meta->short_class('String');
__PACKAGE__->meta->make_immutable();
1;
