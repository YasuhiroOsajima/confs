```bash
vim /usr/lib/systemd/system/code-server@.service

[Unit]
Description=code-server
After=network.target
[Service]
Type=exec
- ExecStart=/usr/bin/code-server
+ ExecStart=/usr/bin/code-server --cert /etc/code_certs/codeserver.crt --cert-key /etc/code_certs/codeserver.key
Restart=always
User=%i
[Install]
WantedBy=default.target

systemctl daemon-reload
systemctl restart code-server@root.service
systemctl status code-server@root.service
```

```bash
vim ~/.config/code-server/config.yaml
```
