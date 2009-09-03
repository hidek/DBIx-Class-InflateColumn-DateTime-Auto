use strict;
use warnings;

use Test::More;
use Data::Dumper;

use lib qw(t/lib);

use_ok( 'DBIx::Class::InflateColumn::DateTime::Auto' ); 
use_ok( 'Test::Schema');

my @connect_info = ('dbi:SQLite:dbname=:memory:','','');
my $schema = Test::Schema->connect(@connect_info);
$schema->storage->ensure_connected;
$schema->deploy;

my $rs = $schema->resultset('User');
my $user = $rs->create({id => 1, name => 'test'});

diag $user->created_on;
diag $user->updated_on;

done_testing();

