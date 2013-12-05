package Form::Toolkit::Clerk::Hash;
use Moose;
use DateTime::Format::ISO8601;

extends qw/Form::Toolkit::Clerk/;

=head1 NAME

Form::Toolkit::Clerk::Hash - A Clerk that will fill a form from a hash of values.

=cut

has '+source' => ( isa => 'HashRef' );

sub _get_source_value{
  my ($self, $field) = @_;
  return $self->source->{$field->name()}
}
__PACKAGE__->meta->make_immutable();
1;
