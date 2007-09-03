use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME         => 'DBIx::Class::InflateColumn::DateTime::Auto',
    VERSION_FROM => 'lib/DBIx/Class/InflateColumn/DateTime/Auto.pm', # finds $VERSION
    AUTHOR       => 'Hideo Kimura (hide@hide-k.net)',
    PREREQ_PM    => {
                     'Test::Simple' => 0.44,
                     'DBIx::Class' => 0.07000
                    },
);
