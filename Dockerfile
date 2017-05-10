FROM jekyll/jekyll:latest AS jekyll
#COPY Gemfile Gemfile.lock /srv/jekyll/
#RUN bundle update && bundle install
COPY . /srv/jekyll/
RUN rm Gemfile Gemfile.lock &&  jekyll build

FROM nginx
COPY --from=jekyll /srv/jekyll/_site /usr/share/nginx/html/brand-guidelines
