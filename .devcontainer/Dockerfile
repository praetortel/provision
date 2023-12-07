FROM ubuntu:latest

ARG USERNAME=vscode
ARG USER_UID=1000
ARG USER_GID=$USER_UID

RUN groupadd --gid $USER_GID $USERNAME && useradd --uid $USER_UID --gid $USER_GID -m $USERNAME 

RUN apt-get update && apt-get install -y sudo git perl curl build-essential
RUN echo $USERNAME ALL=\(root\) NOPASSWD:ALL > /etc/sudoers.d/$USERNAME && chmod 0440 /etc/sudoers.d/$USERNAME 

RUN curl -L https://cpanmin.us | perl - --sudo App::cpanminus
RUN cpanm --sudo App::cpm

WORKDIR /usr
RUN sudo cpm install Dancer2 Dancer2::CLI

ENV PERL5LIB=/usr/local/lib/perl5
ENV PATH=/usr/local/bin:$PATH

WORKDIR /workspaces
RUN chown -R vscode:vscode /workspaces
USER $USERNAME

