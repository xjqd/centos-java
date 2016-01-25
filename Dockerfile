FROM ansible/centos7-ansible:stable
#RUN curl -s -L http://download.oracle.com/otn-pub/java/jdk/8u71-b15/jdk-8u71-linux-x64.tar.gz \
#    | tar -xvf -C /opt
RUN curl -s -L --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
          http://download.oracle.com/otn-pub/java/jdk/8u66-b17/server-jre-8u66-linux-x64.tar.gz \
              | tar xz -C /opt --no-same-owner
ENV JAVA_HOME=/opt/jdk1.8.0_66
ENV PATH=$PATH:$JAVA_HOME/bin
