mkdir "../images"
docker save dockercistack_jenkins -o ../images/jenkins.tar
docker save dockercistack_sonar -o ../images/sonar.tar
docker save dockercistack_nexus -o ../images/nexus.tar
