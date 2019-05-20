# project-y
Weekend project

```
├── app.js  			        = Nodejs app.
├── docker
│   ├── jenkins-master	   	    = Unused - I wanted to script Jenkins config, but then realised I will not have enough time  
│   │   ├── Dockerfile
│   │   ├── docker-plugin.groovy
│   │   ├── plugins.txt
│   │   └── security.groovy
│   └── jenkins-slave 		    = Simple JNLP Jenkins slave with nodejs
│       └── Dockerfile
├── img
│   ├── Jenkins01.png
│   └── Jenkins02.png
├── pipelines
│   ├── first-job 		        = Upstream job
│   │   └── Jenkinsfile
│   └── second-job 		        = Downstream job
│       └── Jenkinsfile
└── vagrant 			        = Half done vagrant config.
    ├── Vagrantfile
    └── bootstrap.sh
```
 ## PERFORMED STEPS 
```
### Install docker 
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
mkdir /var/jenkins_home
sudo chown 1000 /var/jenkins_home/


### Enable Docker remote API (TCP socket)
Create  /etc/systemd/system/docker.service.d/override.conf and add the three lines below.

[Service]
ExecStart=
ExecStart=/usr/bin/dockerd -H fd:// -H tcp://0.0.0.0:2376

sudo systemctl daemon-reload
sudo systemctl restart docker.service

### Start Jenkins Master
sudo docker run -d --restart unless-stopped -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins-master jenkins/jenkins


### Build JNLP Docker image with NodeJS
Image registry: https://hub.docker.com/r/fnikolov/jnlp-slave-nodejs/dockerfile
docker image build -t fnikolov/jnlp-slave-nodejs .
docker push fnikolov/jnlp-slave-nodejs:tagname

### Connfigure Jenkins Docker plugin.
As per the screenshots.


### Configure Jenkins.
See pipelines 

```
