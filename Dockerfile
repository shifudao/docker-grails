FROM openjdk:8-alpine
MAINTAINER "冯宇<yu.feng@shifudao.com>"

ENV GRAILS_VERSION 2.5.0
RUN cd /usr/share && \
    wget https://github.com/grails/grails-core/releases/download/v${GRAILS_VERSION}/grails-${GRAILS_VERSION}.zip && \
    unzip grails-${GRAILS_VERSION}.zip && \
    rm -f grails-${GRAILS_VERSION}.zip
RUN ln -s /usr/share/grails-${GRAILS_VERSION}/bin/grails /usr/bin/
RUN ln -s /usr/share/grails-${GRAILS_VERSION}/bin/startGrails /usr/bin/

WORKDIR /app/

CMD grails
