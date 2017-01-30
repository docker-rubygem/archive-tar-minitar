FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.5.2

RUN gem install archive-tar-minitar --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["minitar"]
CMD ["--help"]
