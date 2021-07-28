DOCKER_NETWORK = docker-dss_default
ENV_FILE = hadoop-dss.env
current_branch := $(shell git rev-parse --abbrev-ref HEAD)
build:
	docker build -t leismile/dss:$(current_branch) ./

tag-dockerhub:
	docker tag registry.cn-zhangjiakou.aliyuncs.com/service-stack/dss:$(current_branch) leismile/dss:$(current_branch) 

tag-aliyun:
	docker tag leismile/dss:$(current_branch) registry.cn-zhangjiakou.aliyuncs.com/service-stack/dss:$(current_branch)

pull-dockerhub:
	docker pull leismile/dss:$(current_branch)

pull-aliyun:
	docker pull registry.cn-zhangjiakou.aliyuncs.com/service-stack/dss:$(current_branch)

push-dockerhub:
	docker push leismile/dss:$(current_branch)

push-aliyun:
	docker push registry.cn-zhangjiakou.aliyuncs.com/service-stack/dss:$(current_branch)

