FROM ruby:alpine3.10

RUN apk update && apk --no-cache add build-base openssl gmp-dev ruby-dev
ENV PESAN 'hello from ruby'
WORKDIR /home/app

COPY Gemfile   .
COPY index.rb  .

RUN bundle install

RUN addgroup -S app \
  && adduser app -S -G app

RUN chown app:app -R /home/app

USER app

WORKDIR /home/app

EXPOSE 4567

CMD ruby index.rb -s Puma
