echo "Make directories to make sure they are there..."
mkdir -p /etc/tomcat/Catalina/localhost

echo "Downloading reference-cdda-validator war file..."
wget -nv https://github.com/usnistgov/iheos-toolkit2/releases/download/v7.2.9/xdstools7.2.9.war -O /var/lib/tomcat/webapps/xdstools7.2.9.war

echo "Copying config_extras..."
cp -f /etc/iheos_toolkit2/files/config_extra/web.xml /etc/tomcat/web.xml

echo "Done!"