curl -L -O https://artifacts.elastic.co/downloads/beats/filebeat/filebeat-8.17.4-amd64.deb
sudo dpkg -i filebeat-8.17.4-amd64.deb
rm filebeat-8.17.4-amd64.deb

echo "IF YOUR INSTALLATION IS SUCCESSFUL, CHANGE FILEBEAT CONFIGURATION IN /etc/filebeat/filebeat.yml. Refer to 'https://www.elastic.co/guide/en/beats/filebeat/current/configuring-howto-filebeat.html' for more details."
