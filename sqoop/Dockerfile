FROM ubuntu:16.04
RUN apt-get update && apt-get install -y openjdk-8-jdk
RUN apt-get install -y wget curl
ENV HADOOP_HOME /opt/hadoop
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
RUN wget http://archive.apache.org/dist/sqoop/1.4.6/sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz
RUN tar -xvf sqoop-1.4.6.bin__hadoop-2.0.4-alpha.tar.gz
RUN mv sqoop-1.4.6.bin__hadoop-2.0.4-alpha /usr/local/sqoop
ENV SQOOP_HOME=/usr/local/sqoop
RUN wget  http://dev.mysql.com/get/Downloads/Connector-J/mysql-connector-java-5.1.37.tar.gz
RUN tar -xzf mysql-connector-java-5.1.37.tar.gz
RUN mv /mysql-connector-java-5.1.37/mysql-connector-java-5.1.37-bin.jar /usr/local/sqoop/lib
RUN echo "export SQOOP_HOME=/usr/local/sqoop" >> $HOME/.bashrc  && \
    echo "export PATH=$PATH:$SQOOP_HOME/bin">> $HOME/.bashrc
RUN  mv /usr/local/sqoop/conf/sqoop-env-template.sh /usr/local/sqoop/conf/sqoop-env.sh
RUN echo "export HADOOP_COMMON_HOME=/opt/hadoop" >> /usr/local/sqoop/conf/sqoop-env.sh  && \
     echo "export HADOOP_MAPRED_HOME=/opt/hadoop" >> /usr/local/sqoop/conf/sqoop-env.sh
ENV PATH $SQOOP_HOME/:$PATH
EXPOSE 12000 9000
CMD tail -f /dev/null
~
~
~
#ADD entrypoint.sh $SQOOP_HOME/
#RUN chmod 777 $SQOOP_HOME/entrypoint.sh
#WORKDIR $SQOOP_HOME/
#ENTRYPOINT "./entrypoint.sh"
