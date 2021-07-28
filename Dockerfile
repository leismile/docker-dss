FROM leismile/hive:1.2.1-postgresql-metastore
MAINTAINER leismile <leismile@gmail.com>

#JDK
ENV JAVA_HOME /usr/lib/jvm/java-8-openjdk-amd64
#HADOOP
ENV HADOOP_CONF_DIR /etc/hadoop
#Hive
ENV HIVE_CONF_DIR /opt/hive/conf
#Spark
#ENV SPARK_HOME /opt/spark
#ENV SPARK_CONF_DIR /opt/spark/conf
#ENV PYSPARK_ALLOW_INSECURE_GATEWAY 1  # Pyspark必须加的参数
#DataSphereStudio
ENV DSS_HOME /opt/dss_linkis

WORKDIR /opt

#Install Basic Software
RUN apt-get -o Acquire::Check-Valid-Until=false update && apt-get install -y nginx python python-pip sudo unzip expect telnet tar sed dos2unix build-essential yum mysql-client

#Create User and Set Sudo
RUN sudo useradd hadoop
RUN echo 'hadoop  ALL=(ALL)       NOPASSWD: NOPASSWD: ALL' >> /etc/sudoers


#For Pyspark Python 3.7 or above is required.
#RUN python -m pip install matplotlib

#DataSphereStudio Installer
RUN wget https://osp-1257653870.cos.ap-guangzhou.myqcloud.com/WeDatasphere/DataSphereStudio/0.9.1/dss_linkis.zip && \ 
unzip dss_linkis.zip 

#Custom configuration goes here
ADD conf/config.sh $DSS_HOME/conf
ADD conf/distribution.sh $DSS_HOME/conf
ADD conf/db.sh $DSS_HOME/conf



