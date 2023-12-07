package Provison::App;
use Dancer2;

our $VERSION = '0.1';

get '/' => sub {
    template 'index' => { 'title' => 'Provison::App' };
};

get '/foo' => sub {
    return 'Hello :)';
};
true;
