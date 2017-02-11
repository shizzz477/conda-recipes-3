FROM centos:6
MAINTAINER Mark Howison <mhowison@brown.edu>
ENV PATH /conda/bin:$PATH
ADD setup-build-env.sh /tmp/setup-build-env.sh
RUN /tmp/setup-build-env.sh
