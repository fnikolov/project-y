FROM jenkins/jnlp-slave

USER root
RUN apt-get update && apt-get install -y \
    nodejs \
 && rm -rf /var/lib/apt/lists/*
USER jenkins
