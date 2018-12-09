# IKEv2 VPN Server on Docker

Recipe to build [`lagun4ik/ikev2-vpn`](https://registry.hub.docker.com/u/lagun4ik/ikev2-vpn/) Docker image.

## Usage

### Create and edit `ikev2.env`

```bash
cp data/env/ikev2.env.example data/env/ikev2.env
nano data/env/ikev2.env
```

*Be sure to replace `vpn1.example.com` with your own domain name and resolve it to you server's IP address. Simply put an IP address is supported as well (and enjoy an even faster handshake speed).*

### Start server

```bash
docker-compose up -d
```
    
### Create `.mobileconfig`

```bash
docker-compose exec ikev2 generate-mobileconfig > ikev2-vpn.mobileconfig
```

*Transfer the generated `ikev2-vpn.mobileconfig` file to your local computer via SSH tunnel (`scp`) or any other secure methods.*
