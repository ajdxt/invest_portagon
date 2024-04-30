from ruby:3.2.2

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
WORKDIR /invest-portagon

COPY Gemfile /invest-portagon/Gemfile
COPY Gemfile.lock /invest-portagon/Gemfile.lock
RUN bundle install

COPY . /invest-portagon

EXPOSE 3001

CMD ["rails", "server", "-p", "3001"]
