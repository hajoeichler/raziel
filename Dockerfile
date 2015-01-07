FROM debian:wheezy
MAINTAINER Fabian M. Borschel <fabian.borschel@commercetools.de>
ENV EDITOR vim

RUN apt-get update && apt-get install -y vim make git ruby1.9.3 libgpg-error-dev libgpgme11-dev
RUN gem install gpgme -- --use-system-libraries
RUN gem install cucumber aruba ptools highline
RUN git clone https://github.com/onibox/raziel.git ~/raziel

ENTRYPOINT ["/root/raziel/bin/raziel"]
