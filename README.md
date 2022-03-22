# IKEv2 VPN Server on Docker

### Configuration

You can skip this step

```bash
cp .env.example .env
```

`HOST_NAME` is also name of the root certificate

`HOST_COUNTRY` and `HOST_IP` are set automatically


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

Download `./data/profiles/[name].mobileconfig` and just open on your Mac

#### Note
IKEv2 and mobileconfig is supported on apple devices at the system level. No need to install additional software.
