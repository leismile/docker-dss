################### The install Configuration of all Linkis's Micro-Services #####################
#
#    NOTICE:
#       1. If you just wanna try, the following micro-service configuration can be set without any settings.
#            These services will be installed by default on this machine.
#       2. In order to get the most complete enterprise-level features, we strongly recommend that you install
#          the following microservice parameters
#

###  EUREKA install information
###  You can access it in your browser at the address below:http://${EUREKA_INSTALL_IP}:${EUREKA_PORT}
EUREKA_INSTALL_IP=127.0.0.1         # Microservices Service Registration Discovery Center
EUREKA_PORT=20303

###  Gateway install information
GATEWAY_INSTALL_IP=127.0.0.1
GATEWAY_PORT=9001

###  publicservice
PUBLICSERVICE_INSTALL_IP=127.0.0.1
PUBLICSERVICE_PORT=9102


### Hive Metadata Query service, provide the metadata information of Hive databases.
METADATA_INSTALL_IP=127.0.0.1
METADATA_PORT=9103


### ResourceManager
RESOURCEMANAGER_INSTALL_IP=127.0.0.1
RESOURCEMANAGER_PORT=9104


### Spark
### This service is used to provide spark capability.
SPARK_INSTALL_IP=127.0.0.1
SPARK_EM_PORT=9105
SPARK_ENTRANCE_PORT=9106


### Hive
### This service is used to provide hive capability.
HIVE_INSTALL_IP=127.0.0.1
HIVE_EM_PORT=9107
HIVE_ENTRANCE_PORT=9108


### PYTHON
### This service is used to provide python capability.
PYTHON_INSTALL_IP=127.0.0.1
PYTHON_EM_PORT=9109
PYTHON_ENTRANCE_PORT=9110


### JDBC
### This service is used to provide jdbc capability.
JDBC_INSTALL_IP=127.0.0.1
JDBC_ENTRANCE_PORT=9111

### SHELL
### This service is used to provide shell capability.
SHELL_INSTALL_IP=127.0.0.1
SHELL_EM_PORT=9114
SHELL_ENTRANCE_PORT=9115


### BML
### This service is used to provide BML capability.
BML_INSTALL_IP=127.0.0.1
BML_PORT=9113
########## Linkis微服务配置完毕#####

################### The install Configuration of all DataSphereStudio's Micro-Services #####################
#
#    NOTICE:
#       1. If you just wanna try, the following micro-service configuration can be set without any settings.
#            These services will be installed by default on this machine.
#       2. In order to get the most complete enterprise-level features, we strongly recommend that you install
#          the following microservice parameters
#


### DSS_SERVER
### This service is used to provide dss-server capability.
DSS_SERVER_INSTALL_IP=127.0.0.1
DSS_SERVER_PORT=9004

### Appjoint-Entrance
### This service is used to provide Appjoint-Entrance capability.
APPJOINT_ENTRANCE_INSTALL_IP=127.0.0.1
APPJOINT_ENTRANCE_PORT=9005

### Flow-Execution-Entrance
### This service is used to provide flow execution capability.
FLOW_EXECUTION_INSTALL_IP=127.0.0.1
FLOW_EXECUTION_PORT=9006

###The IP address and port are written into the database here, so be sure to plan ahead
## visualis-server
VISUALIS_SERVER_INSTALL_IP=127.0.0.1
VISUALIS_SERVER_PORT=9007

### visualis nginx acess ip,keep consistent with DSS Web
VISUALIS_NGINX_IP=127.0.0.1
VISUALIS_NGINX_PORT=8088

########## DSS微服务配置完毕#####

