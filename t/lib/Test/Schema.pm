package # hide from PAUSE
    Test::Schema;

use base qw/DBIx::Class::Schema/;

__PACKAGE__->load_classes(qw/User/);

1;

