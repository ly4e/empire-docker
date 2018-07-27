# empire-docker
PowerShell Empire is a PowerShell and Python post-exploitation agent.
This repo is built around having a dockerized container

### references:
[PowerShell Empire | Building an Empire with PowerShell](http://www.powershellempire.com/)


[GitHub - EmpireProject/Empire: Empire is a PowerShell and Python post-exploitation agent.](https://github.com/EmpireProject/Empire)


[Hacking and security: PowerShell Empire Docker Build](http://hackingandsecurity.blogspot.com/2017/07/powershell-empire-docker-build.html)


### build info

`docker build --tag empire .`

Also available pre-built from docker hub `docker pull ly4e/empire-docker`

## Usage Example(s):

```
docker container run --rm -it --publish 80:80 -p 443:443 -p 8080:8080 \
  -v $(pwd)/Empire/tmp:/tmp \
  -v $(pwd)/Empire/downloads:/opt/Empire/downloads \
  ly4e/empire-docker
```
#### Parameters broken down
`-p 80:80` exposes port 80 within the docker container to port 80 on the host

`-v $(pwd)/Empire/tmp:/tmp` By default, PowerShell Empire writes generated stager files to /tmp. This volume mapping exists to conveniently write stager output files to the host for later use.

`-v $(pwd)/Empire/downloads:/opt/Empire/downloads` The “downloads” directory is where loot/agent logs are stored.
