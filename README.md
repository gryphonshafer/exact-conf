# NAME

exact::conf - Cascading merged application configuration extension for exact

# VERSION

version 1.06

[![test](https://github.com/gryphonshafer/exact-conf/workflows/test/badge.svg)](https://github.com/gryphonshafer/exact-conf/actions?query=workflow%3Atest)
[![codecov](https://codecov.io/gh/gryphonshafer/exact-conf/graph/badge.svg)](https://codecov.io/gh/gryphonshafer/exact-conf)

# SYNOPSIS

    use exact -conf;

# DESCRIPTION

[exact::conf](https://metacpan.org/pod/exact%3A%3Aconf) is a cascading merged application configuration extension for
[exact](https://metacpan.org/pod/exact). It effectively is an integration of [Config::App](https://metacpan.org/pod/Config%3A%3AApp) with [exact](https://metacpan.org/pod/exact).
Consult the [Config::App](https://metacpan.org/pod/Config%3A%3AApp) documentation for additional information.
See the [exact](https://metacpan.org/pod/exact) documentation for additional information about
extensions. The intended use of [exact::conf](https://metacpan.org/pod/exact%3A%3Aconf) is via the extension interface
of [exact](https://metacpan.org/pod/exact).

    use exact -conf, -cli, -noutf8;

However, you can also use it directly, which will also use [exact](https://metacpan.org/pod/exact) with
default options:

    use exact::conf;

# IMPORTED FUNCTION

There is only 1 imported function:

## conf

This...

    use exact -conf;
    say conf->get('answer');

...is equivalent to this...

    use Config::App;
    say Config::App->new->get('answer');

If you'd like to load [Config::App](https://metacpan.org/pod/Config%3A%3AApp) but skip its default import process that
looks for default-location-located configuration files and errors if it can't
find such, pass some false value. For example, if you want to specify a
non-default-located configuration file at runtime, do this:

    use exact 'conf(0)';
    say conf('settings/conf.yaml')->get('answer');

# SEE ALSO

You can look for additional information at:

- [GitHub](https://github.com/gryphonshafer/exact-conf)
- [MetaCPAN](https://metacpan.org/pod/exact::conf)
- [GitHub Actions](https://github.com/gryphonshafer/exact-conf/actions)
- [Codecov](https://codecov.io/gh/gryphonshafer/exact-conf)
- [CPANTS](http://cpants.cpanauthors.org/dist/exact-conf)
- [CPAN Testers](http://www.cpantesters.org/distro/D/exact-conf.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is Copyright (c) 2019-2021 by Gryphon Shafer.

This is free software, licensed under:

    The Artistic License 2.0 (GPL Compatible)
