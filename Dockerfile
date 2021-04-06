FROM ruby:3.0.0-slim

RUN apt-get update -qq && apt-get install -y build-essential nodejs libsqlite3-dev

WORKDIR /wazirx-sidekiq-ui

COPY Gemfile /wazirx-sidekiq-ui/Gemfile
COPY Gemfile.lock /wazirx-sidekiq-ui/Gemfile.lock

RUN bundle install && \
	apt-get remove -y build-essential libsqlite3-dev && \
    rm -rf /var/lib/apt/lists/*

COPY . /wazirx-sidekiq-ui

EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]