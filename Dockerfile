FROM       blalor/supervised:latest
MAINTAINER Brian Lalor <blalor@bravo5.org>

# Install required packages
RUN yum install -y java-1.7.0-openjdk
