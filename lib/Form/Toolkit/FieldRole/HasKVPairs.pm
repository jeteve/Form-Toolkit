package Form::Toolkit::FieldRole::HasKVPairs;
use Moose::Role;
with qw/Form::Toolkit::FieldRole/;

has 'kvpairs' => ( is => 'rw' , isa => 'Form::Toolkit::KVPairs');

=head1 NAME

Form::Toolkit::FieldRole::HasKVPairs - A Role that makes a field only aware of a set of 'kvpairs' values ( a L<Form::Toolkit::KVPairs> ).

=cut

1;
