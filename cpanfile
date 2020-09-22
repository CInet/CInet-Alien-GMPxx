on 'build' => sub {
    requires 'Alien::Build';
    requires 'Alien::m4';
};

on 'test' => sub {
    requires 'Test::More';
    requires 'Test::Alien::CPP';
};
