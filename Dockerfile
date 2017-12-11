# use openshift/base-centos7 build
FROM openshift/base-centos7

MAINTAINER Richad Lee "anxminise@163.com"

# set env var
ENV JAVA_HOME /opt/jdk1.8.0_131

# create /opt/jdk1.8_131 dir
RUN mkdir -p $JAVA_HOME

# copy jdk content to /opt/jdk1.8.0_131
ADD jdk/jdk1.8.0_131 $JAVA_HOME

# create ls point to jdk1.8
RUN ln -s $JAVA_HOME/bin/java /usr/local/bin/java 

# Define default command
CMD [ "bash" ]