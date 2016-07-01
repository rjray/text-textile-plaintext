#!/usr/bin/perl

use strict;
use Test::More;

plan skip_all => "Author tests not required for installation"
    unless $ENV{AUTHOR_TESTING};

eval "require Test::Perl::Critic";

Test::Perl::Critic->import( -profile => 't/perlcriticrc' );

all_critic_ok();
