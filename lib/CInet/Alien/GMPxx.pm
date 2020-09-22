=encoding utf8

=head1 NAME

CInet::Alien::GMPxx - Static build of libgmpxx

=cut

# ABSTRACT: Static build of libgmpxx
package CInet::Alien::GMPxx;
use base qw(Alien::Base);

=head1 SYNOPSIS

A static library is available:

    use CInet::Alien::GMPxx;
    say CInet::Alien::GMPxx->cflags_static;
    say CInet::Alien::GMPxx->libs_static;

A dynamic library for FFI as well:

    use FFI::Platypus;
    my $ffi = FFI::Platypus->new;
    $ffi->lib(CInet::Alien::GMPxx->dynamic_libs);

=head2 VERSION

This document describes CInet::Alien::GMPxx v1.0.0.

=cut

our $VERSION = "v1.0.0";

=head1 DESCRIPTION

This module provides a static build of GMPxx, the C++ interface to the
The GNU Multiple Precision Arithmetic Library.

Static builds of libraries and toosl are preferred for L<Alien> modules
to avoid breakage on system updates, but some distributions do not include
static libraries for GMP(xx). Since I happen to need this often for CInet,
I decided to create a static build alien for GMPxx.

This package inherits L<Alien::Base>.

=head1 SEE ALSO

=over

=item *

The GMP website is L<https://gmplib.org>.

=back

=head1 AUTHOR

Tobias Boege <tobs@taboege.de>

=head1 COPYRIGHT AND LICENSE

This software is copyright (C) 2020 by Tobias Boege.

This is free software; you can redistribute it and/or
modify it under the terms of the Artistic License 2.0.

=head2 Bundled software

The C<gmp> library is Copyright (C) 1991, 1996, 1999, 2000, 2007
Free Software Foundation, Inc. and is released under the terms
of either the GNU Lesser General Public License v3+ or the
GNU General Public License v2+.

=cut

":wq"
