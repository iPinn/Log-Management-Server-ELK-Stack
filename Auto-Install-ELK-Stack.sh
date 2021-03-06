 #!/bin/bash
  #script automate install ELK Stack

  #import GPG-Key Elastic Stack
  rpm --import https://artifacts.elastic.co/GPG-KEY-elasticsearch
  printf "\n\n===========Success Import GPG-Key!===========\n\n"

  #make repo Elastic Stack
  touch /etc/yum.repos.d/elasticsearch.repo

  #input repo Elastic Stack 
  printf "[elasticsearch-6.x]\nname=Elasticsearch repository for 6.x packages\nbaseurl=https://artifacts.elastic.co/packages/6.x/yum\ngpgcheck=1\ngpgkey=https://artifacts.elastic.co/GPG-KEY-elasticsearch\nenabled=1\nautorefresh=1\ntype=rpm-md" > /etc/yum.repos.d/elasticsearch.repo
  printf "\n\n===========Success Add Repo!===========\n\n"

  #install Elasticsearch
  yum install -y elasticsearch
  printf "\n\n===========Success Install Elasticsearch!===========\n\n"

  #install Logstash
  yum install -y logstash
  printf "\n\n===========Success Install Logstash!===========\n\n"

  #install Kibana
  yum install -y kibana
  printf "\n\n===========Success Install Kibana!===========\n\n"