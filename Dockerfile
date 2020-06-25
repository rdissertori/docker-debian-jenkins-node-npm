FROM rdissertori/debian-jenkins-node-base
ENV UID=1000 GID=1000
USER root
RUN apt-get update -y \
  && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
  && apt-get install -y --no-install-recommends nodejs g++ build-essential \
  && npm i -g yarn \
  && rm -rf /var/lib/apt/lists
WORKDIR /home/jenkins
USER jenkins
