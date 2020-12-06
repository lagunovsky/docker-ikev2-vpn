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

- copy `data/profiles/strongswan-cert.pem` and `data/profiles/[name].mobileconfig` to iPhone
- install `strongswan-cert.pem` and `[name].mobileconfig`

### Installation on Mac

Open `[name].mobileconfig` on Mac 
