#!/usr/bin/env bash

echo "Starting Java and Maven installation"

cd /vagrant/SharedVagrantFolder

tar zfx java.tar.gz -C /opt
tar zfx maven.tar.gz -C /opt
update-alternatives --install "/usr/bin/mvn" "mvn" "/opt/apache-maven-3.3.9/bin/mvn" 100
echo "Maven done."
update-alternatives --install "/usr/bin/java" "java" "/opt/jdk1.8.0_45/bin/java" 100
echo "Java done"
echo "Completed!!!"
