use strict;
use warnings;

use Test::More;
use Test::Alien::CPP;

use CInet::Alien::GMPxx;

alien_ok 'CInet::Alien::GMPxx';

my $xs = do { local $/; <DATA> };
xs_ok $xs, with_subtest {
    my $module = shift;
    is $module->test, "2305567963945518424753102147331756070", "100-primorial";
};

done_testing;

__DATA__

#include <string>
#include <gmpxx.h>

#include "EXTERN.h"
#include "perl.h"
#include "XSUB.h"

MODULE = TA_MODULE PACKAGE = TA_MODULE

SV*
test(klass)
    const char* klass
  CODE:
    mpz_class p = primorial(mpz_class{100});
    std::string ps = p.get_str();
    RETVAL = newSVpvn(ps.data(), ps.length());
  OUTPUT:
    RETVAL
