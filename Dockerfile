FROM jekyll/jekyll AS builder
WORKDIR /build
COPY . /build
RUN echo 'URL: "http://rancher.com"' >> _config.yml && echo 'baseurl: "/brand-guidelines"' >> _config.yml
RUN jekyll build

FROM nginx
COPY --from=builder /build/_site /usr/share/nginx/html/brand-guidelines
