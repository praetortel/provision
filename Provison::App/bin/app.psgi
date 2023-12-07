#!/usr/bin/env perl

use strict;
use warnings;
use FindBin;
use lib "$FindBin::Bin/../lib";


# use this block if you don't need middleware, and only have a single target Dancer app to run here
use Provison::App;

Provison::App->to_app;

=begin comment
# use this block if you want to include middleware such as Plack::Middleware::Deflater

use Provison::App;
use Plack::Builder;

builder {
    enable 'Deflater';
    Provison::App->to_app;
}

=end comment

=cut

=begin comment
# use this block if you want to mount several applications on different path

use Provison::App;
use Provison::App_admin;

use Plack::Builder;

builder {
    mount '/'      => Provison::App->to_app;
    mount '/admin'      => Provison::App_admin->to_app;
}

=end comment

=cut

