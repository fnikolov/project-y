#!/bin/sh
#export DEBIAN_FRONTEND=noninteractive
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh get-docker.sh
sleep 5
mkdir /var/jenkins_home
sudo chown 1000 /var/jenkins_home/
sudo docker run -d --restart unless-stopped -p 8080:8080 -p 50000:50000 -v /var/jenkins_home:/var/jenkins_home --name jenkins-master jenkins/jenkins

while [ ! -f /var/jenkins_home/secrets/initialAdminPassword ];
do
    sleep 3;
done
echo "Please find below initial admin password"
sudo docker exec jenkins-master bash -c "cat /var/jenkins_home/secrets/initialAdminPassword"
