# You'll need to set the host to 0.0.0.0 in _config.yml first

FROM starefossen/ruby-node

WORKDIR /website

ADD . /website

RUN gem install jekyll bundler

# Get a JS runtime
RUN gem install therubyrhino

RUN bundle install

EXPOSE 4000

CMD ["bundle", "exec","jekyll","serve"]


