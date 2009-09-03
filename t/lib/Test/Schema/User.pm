package Test::Schema::User;

use base qw/DBIx::Class/;

__PACKAGE__->load_components(qw/InflateColumn::DateTime::Auto Core/);
__PACKAGE__->table('user');
__PACKAGE__->add_columns(
    id         => {data_type => 'INTEGER',  is_nullable => 0, size => undef},
    name       => {data_type => 'VARCHAR',  is_nullable => 0, size => 255},
    created_on => {data_type => 'DATETIME', is_nullable => 0, size => undef},
    updated_on => {data_type => 'DATETIME', is_nullable => 0, size => undef},
);
__PACKAGE__->set_primary_key('id');

1;

