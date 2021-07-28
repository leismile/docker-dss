##########################################################################################
#######################  Must provided Configurations  ###################################
##########################################################################################

### The install home path of Linkis

#!/bin/sh
#Actively load user env

SSH_PORT=22

deployUser="`whoami`"

### Specifies the user workspace, which is used to store the user's script files and log files.
### Generally local directory
WORKSPACE_USER_ROOT_PATH=file:///tmp/linkis/ ##file:// required

### User's root hdfs path
HDFS_USER_ROOT_PATH=hdfs:///tmp/linkis ##hdfs:// required

### Path to store job ResultSet:file or hdfs path
RESULT_SET_ROOT_PATH=hdfs:///tmp/linkis

# Used to store the azkaban project transformed by DSS
WDS_SCHEDULER_PATH=file:///tmp/wds/scheduler

#DSS Web
DSS_NGINX_IP=127.0.0.1
DSS_WEB_PORT=8088

###azkaban  address for check
AZKABAN_ADRESS_IP=127.0.0.1
AZKABAN_ADRESS_PORT=8081
#
####qualitis address for check
QUALITIS_ADRESS_IP=127.0.0.1
QUALITIS_ADRESS_PORT=8090

##hive metastore
HIVE_META_URL=jdbc:mysql://127.0.0.1:3306/metastore?useUnicode=true
HIVE_META_USER=dss
HIVE_META_PASSWORD=dss

###HADOOP CONF DIR
HADOOP_CONF_DIR=/etc/hadoop

###HIVE CONF DIR
HIVE_CONF_DIR=/opt/hive/conf

###SPARK CONF DIR
SPARK_CONF_DIR=/opt/spark/conf


##########################################################################################
####The following parameters can be modified by the user as required, but not necessary###
##########################################################################################

## LDAP is for enterprise authorization, if you just want to have a try, ignore it.
#LDAP_URL=ldap://localhost:1389/
#LDAP_BASEDN=dc=webank,dc=com

## java application default jvm memory
export SERVER_HEAP_SIZE="512M"

LINKIS_VERSION=0.9.4

DSS_VERSION=0.9.1

