#!/bin/sh

# config xray
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": 443,
      "protocol": "vmess",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "dc8c3578-68d3-4548-8888-a69515100b3f"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}	
EOF

# run xray
/usr/bin/xray run -config /etc/config.json
