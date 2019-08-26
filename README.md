# NAME

exact::conf - Cascading merged application configuration extension for exact

# VERSION

version 1.02

[![Build Status](https://travis-ci.org/gryphonshafer/exact-conf.svg)](https://travis-ci.org/gryphonshafer/exact-conf)
[![Coverage Status](https://coveralls.io/repos/gryphonshafer/exact-conf/badge.png)](https://coveralls.io/r/gryphonshafer/exact-conf)

# SYNOPSIS

    use exact -conf;

# DESCRIPTION

[exact::conf](https://metacpan.org/pod/exact::conf) is a cascading merged application configuration extension for
[exact](https://metacpan.org/pod/exact). It effectively is an integration of [Config::App](https://metacpan.org/pod/Config::App) with [exact](https://metacpan.org/pod/exact).
Consult the [Config::App](https://metacpan.org/pod/Config::App) documentation for additional information.
See the [exact](https://metacpan.org/pod/exact) documentation for additional informatioh about
extensions. The intended use of [exact::conf](https://metacpan.org/pod/exact::conf) is via the extension interface
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

To pass input into `Config::App-`new>, do this:

    say conf('settings/conf.yaml')->get('answer');

# SEE ALSO

You can look for additional information at:

- [GitHub](https://github.com/gryphonshafer/exact-conf)
- [CPAN](http://search.cpan.org/dist/exact-conf)
- [MetaCPAN](https://metacpan.org/pod/exact::conf)
- [AnnoCPAN](http://annocpan.org/dist/exact-conf)
- [Travis CI](https://travis-ci.org/gryphonshafer/exact-conf)
- [Coveralls](https://coveralls.io/r/gryphonshafer/exact-conf)
- [CPANTS](http://cpants.cpanauthors.org/dist/exact-conf)
- [CPAN Testers](http://www.cpantesters.org/distro/D/exact-conf.html)

# AUTHOR

Gryphon Shafer <gryphon@cpan.org>

# COPYRIGHT AND LICENSE

This software is copyright (c) 2019 by Gryphon Shafer.

This is free software; you can redistribute it and/or modify it under
the same terms as the Perl 5 programming language system itself.
