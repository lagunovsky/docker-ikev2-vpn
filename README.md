# IKEv2 VPN Server on Docker

### Start server

```bash
docker-compose up -d
```
    
### Create client certificate

```bash
docker-compose exec ikev2 create-client-cert
```

### Installation on iPhone

- copy `strongswan-cert.pem` and `.mobileconfig` to iPhone
- install `strongswan-cert.pem` and `.mobileconfig`

### Installation on Mac

Open `.mobileconfig` on Mac 