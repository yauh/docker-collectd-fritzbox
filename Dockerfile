FROM python:2.7

MAINTAINER Stephan Hochhaus <stephan@yauh.de>

RUN apt-get update
RUN apt-get install -y python-pip libxml2-dev libxslt1-dev collectd

RUN pip install fritzcollectd
RUN pip install envtpl
RUN pip install envtpl

ADD config/ /etc/collectd/config

ADD start /usr/bin/start
RUN chmod +x /usr/bin/start

CMD start
