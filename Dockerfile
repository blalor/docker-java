FROM       blalor/supervised:latest
MAINTAINER Brian Lalor <blalor@bravo5.org>

# Install required packages
RUN yum install -y java-1.7.0-openjdk

## jmxtrans-agent
RUN curl -L -o /usr/share/java/jmxtrans-agent.jar http://repo1.maven.org/maven2/org/jmxtrans/agent/jmxtrans-agent/1.0.6/jmxtrans-agent-1.0.6.jar
ADD jmxtrans-agent.xml /usr/share/java/jmxtrans-agent.xml
