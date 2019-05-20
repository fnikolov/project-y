# project-y
Weekend project

```
├── app.js  			          = Nodejs app.
├── docker
│   ├── jenkins-master	   	= Unused - I wanted to script Jenkins config, but then realised I will not have enough time  
│   │   ├── Dockerfile
│   │   ├── docker-plugin.groovy
│   │   ├── plugins.txt
│   │   └── security.groovy
│   └── jenkins-slave 		   = Simple JNLP Jenkins slave with nodejs
│       └── Dockerfile
├── img
│   ├── Jenkins01.png
│   └── Jenkins02.png
├── pipelines
│   ├── first-job 		      = Upstream job
│   │   └── Jenkinsfile
│   └── second-job 		      = Downstream job
│       └── Jenkinsfile
└── vagrant 			          = Half done vagrant config.
    ├── Vagrantfile
    └── bootstrap.sh
```
