# Use a smaller base image
FROM ruby:3.1-alpine

# Install dependencies for native gems
RUN apk add --no-cache \
    build-base \
    libffi-dev \
    openssl-dev \
    bash

WORKDIR /app

COPY Gemfile Gemfile.lock ./

# Install Bundler and dependencies
# RUN gem install bundler && bundle install --without development test
RUN gem install bundler && bundle install

COPY app.rb .

EXPOSE 3000

CMD ["ruby", "app.rb"]
