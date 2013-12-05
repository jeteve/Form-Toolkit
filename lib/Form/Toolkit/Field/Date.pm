package JCOM::Form::Field::Date;
use Moose;
use DateTime;

extends qw/JCOM::Form::Field/;

=head1 NAME

JCOM::Form::Field::Date - A single DateTime field.

=cut

has '+value' => ( isa => 'DateTime' );

=head2 value_struct

Returns the string value of this field.

=cut

sub value_struct{
  my ($self) = @_;
  unless( defined $self->value() ){
    return undef;
  }
  return $self->value()->iso8601();
}

=head2 value_clone

Returns a DateTime::clone of the value.

=cut

sub value_clone{
  my ($self) = @_;
  unless( $self->value() ){ return ; }
  # Cloning a DateTime.
  return $self->value()->clone();
}


__PACKAGE__->meta->short_class('Date');
__PACKAGE__->meta->make_immutable();
1;
