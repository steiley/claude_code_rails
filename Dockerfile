FROM ruby:4.0.9-alpine

ENV APP_ROOT /workspace

RUN apk add --update \
            make \
            gcc \
            musl-dev \
            g++ \
            pcre-dev \
            libxml2-dev \
            libxslt-dev \
            yaml-dev \
            tzdata \
            py3-codespell \
            git

RUN mkdir $APP_ROOT
WORKDIR $APP_ROOT

RUN echo 'gem: --no-document' >> ~/.gemrc

CMD ["ash"]
