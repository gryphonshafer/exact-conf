package exact::conf;
# ABSTRACT: Cascading merged application configuration extension for exact

use 5.010;
use exact;
use strict;

# VERSION

sub import {
    my ( $self, $caller, $params ) = @_;
    $caller //= caller();

    my @params = grep { length } split( /[,\s]+/, $params || '' );

    require Config::App;
    Config::App->import(@params);

    {
        no strict 'refs';
        my $method = 'conf';
        *{ $caller . '::' . $method } = \&$method unless ( defined &{ $caller . '::' . $method } );
    }
}

sub conf {
    shift;
    return Config::App->new(@_);
}

1;
__END__
=pod

=begin :badges

=for markdown
[![Build Status](https://travis-ci.org/gryphonshafer/exact-conf.svg)](https://travis-ci.org/gryphonshafer/exact-conf)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/exact-conf/badge.png)](https://coveralls.io/r/gryphonshafer/exact-conf)

=end :badges

=head1 SYNOPSIS

    use exact -conf;

=head1 DESCRIPTION

L<exact::conf> is a cascading merged application configuration extension for
L<exact>. It effectively is an integration of L<Config::App> with L<exact>.
Consult the L<Config::App> documentation for additional information.
See the L<exact> documentation for additional informatioh about
extensions. The intended use of L<exact::conf> is via the extension interface
of L<exact>.

    use exact -conf, -cli, -noutf8;

However, you can also use it directly, which will also use L<exact> with
default options:

    use exact::conf;

=head1 IMPORTED FUNCTION

There is only 1 imported function:

=head2 conf

This...

    use exact -conf;
    say conf->get('answer');

...is equivalent to this...

    use Config::App;
    say Config::App->new->get('answer');

To pass input into C<Config::App->new>, do this:

    say conf('settings/conf.yaml')->get('answer');

=head1 SEE ALSO

You can look for additional information at:

=for :list
* L<GitHub|https://github.com/gryphonshafer/exact-conf>
* L<CPAN|http://search.cpan.org/dist/exact-conf>
* L<MetaCPAN|https://metacpan.org/pod/exact::conf>
* L<AnnoCPAN|http://annocpan.org/dist/exact-conf>
* L<Travis CI|https://travis-ci.org/gryphonshafer/exact-conf>
* L<Coveralls|https://coveralls.io/r/gryphonshafer/exact-conf>
* L<CPANTS|http://cpants.cpanauthors.org/dist/exact-conf>
* L<CPAN Testers|http://www.cpantesters.org/distro/D/exact-conf.html>

=cut
