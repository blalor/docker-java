FROM       localhost:5000/core/supervised
MAINTAINER Brian Lalor <brian@autosportlabs.com>

# Install required packages
RUN yum install -y java-1.7.0-openjdk
