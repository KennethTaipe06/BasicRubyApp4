# Dockerfile
FROM ruby:3.2

WORKDIR /app

COPY Gemfile Gemfile
COPY Project5.rb app.rb

RUN bundle install

EXPOSE 4567

CMD ["ruby", "app.rb"]