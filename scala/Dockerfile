FROM bigtruedata/scala

ENV http_proxy=${http_proxy} \
    https_proxy=${http_proxy} \
    HTTP_PROXY=${http_proxy} \
    HTTPS_PROXY=${http_proxy} \
    no_proxy=${no_proxy} \
    NO_PROXY=${no_proxy}

ENV SBT_VERSION 1.0.4

# Install sbt
RUN \
  curl -L -o sbt-$SBT_VERSION.deb https://dl.bintray.com/sbt/debian/sbt-$SBT_VERSION.deb && \
  dpkg -i sbt-$SBT_VERSION.deb && \
  rm sbt-$SBT_VERSION.deb && \
  apt-get update && \
  apt-get install sbt && \
  sbt sbtVersion

RUN mkdir -p /exercism/scala

WORKDIR /exercism/scala
