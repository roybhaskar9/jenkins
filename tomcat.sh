sudo apt-get update
sudo apt-get install tomcat7 tomcat7-admin
wget https://raw.githubusercontent.com/roybhaskar9/samplejava/master/tomcat-users.xml -O /etc/tomcat7/tomcat-users.xml
sudo service tomcat7 restart
