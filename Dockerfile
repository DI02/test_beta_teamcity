FROM openjdk:8-jre-alpine

RUN apk --no-cache add --update \
  bash \
  curl

ENV PATH $PATH:/liquibase

ENV LIQUIBASE_VERSION 3.7.0

RUN mkdir -p /liquibase \
    && curl -L https://github.com/liquibase/liquibase/releases/download/liquibase-parent-${LIQUIBASE_VERSION}/liquibase-${LIQUIBASE_VERSION}-bin.tar.gz \
    | tar xzC /liquibase

COPY ./lib /liquibase/lib/

RUN mkdir -p /liquibase/changelog

CMD ["/setup.sh"]
