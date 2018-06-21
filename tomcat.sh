sudo apt-get update
sudo apt-get -y install tomcat7 tomcat7-admin lynx
wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/tomcat-users.xml -O /etc/tomcat7/tomcat-users.xml
sudo service tomcat7 restart
lynx localhost:8080
