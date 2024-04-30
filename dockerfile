from ruby:3.2.2 AS base

WORKDIR /invest-portagon

COPY Gemfile /invest-portagon/Gemfile
COPY Gemfile.lock /invest-portagon/Gemfile.lock
RUN bundle install

COPY . /invest-portagon

EXPOSE 3001

CMD ["bundle", "exec", "puma", "-C", "config/puma.rb", "-p", "3001"]
