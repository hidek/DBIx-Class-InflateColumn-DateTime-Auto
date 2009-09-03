package    # hide from PAUSE
    Test;

sub initialise {

    my $dsn = "dbi:SQLite:memory:";

    return DigestTest::Schema->compose_connection('Test' => $dsn);
}

sub init_schema {
    my $self    = shift;
    
    my $schema = DigestTest::Schema->compose_connection('DigestTest' => $dsn);

    #    print $schema->storage->deployment_statements($schema);
    $schema->deploy();

    return $schema;
}

1;

1;

