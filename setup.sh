sudo apt-get update
sudo apt-get install -y puppet
sudo puppet module install rtyler-jenkins
sudo puppet module install hubspot-nexus
sudo puppet module install maestrodev-sonarqube
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/jenkins.pp
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/nexus.pp
wget https://raw.githubusercontent.com/roybhaskar9/jenkins/master/sonar.pp
sudo puppet apply jenkins.pp
sudo puppet apply nexus.pp
sudo puppet apply sonar.pp
echo "sonar.embeddedDatabase.port:               9092" >> /usr/local/sonar/conf/sonar.properties
/etc/init.d/sonar start
rm -f /etc/maven/settings.xml
wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/settings.xml -O /etc/maven/settings.xml
