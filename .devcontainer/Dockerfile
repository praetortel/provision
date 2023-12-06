FROM ubuntu:latest

RUN apt-get update && apt-get -y install perl curl build-essential
RUN cpan install CPAN::DistnameInfo Unknown::Values Plack Plack::Middleware::FixMissingBodyInRedirect Dancer2