package JCOM::Form::FieldRole::MaxLength;
use Moose::Role;
with qw/JCOM::Form::FieldRole/;

=head1 NAME

JCOM::Form::FieldRole::MaxLength - A Role that gives a max_length to this field.

=cut

has 'max_length' => ( is => 'rw' , isa => 'Int' , default => 255 , required => 1);

after 'validate' => sub{
  my ($self) = @_;
  unless( defined $self->value() ){ return ; }

  if( length($self->value()) > $self->max_length() ){
    $self->add_error('Value too long. Maximum length is '.$self->max_length().' characters');
  }

};

1;
