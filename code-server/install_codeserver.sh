curl -fsSL https://code-server.dev/install.sh | sh
systemctl enable --now code-server@$USER

firewall-cmd --zone=public --add-port=8080/tcp --permanent
firewall-cmd --zone=public --add-port=8080/tcp 

