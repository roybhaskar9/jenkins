sudo apt-get update
sudo apt-get install -y puppet
sudo puppet module install rtyler-jenkins
sudo puppet module install hubspot-nexus
sudo puppet module install maestrodev-sonarqube
sudo puppet apply jenkins.pp
sudo puppet apply nexus.pp
sudo puppet apply sonar.pp
/etc/init.d/sonar start
