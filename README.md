Karsajobs Deploy
================

Before you go
-------------
We should deploy `mongodb` and the `backend` first then get the IP address and port which the backend run on. 

Run this command to deploy `mongodb` and the `backend`:
```sh
make apply-mongo
make apply-backend
```
After we got the IP and port, update `karsajobs-ui-deployment.yml` line number `56` with the given IP and port.

To deploy the frontend service simply execute command as follows:
```sh
make apply-frontend
```

Images used in this deployment
-------------------------
1. [MongoDB](https://hub.docker.com/_/mongo) _(*We are using MongoDB V3)_
2. [Backend](https://github.com/f1dz/karsajobs-backend/pkgs/container/karsajobs)
3. [Frontend](https://github.com/f1dz/karsajobs-frontend/pkgs/container/karsajobs-ui)

Grafana
-------
In this project I'm using [Node Exporter Full](https://grafana.com/grafana/dashboards/1860-node-exporter-full/) dashboard, the dashboard's screenshot will looks like this
![Grafana Dashboard](/img/grafana-dashboard.png "Grafana Dashboard")

Source & CI Configuration
----------------
As we are using Github Action as CI, the workflows can be found in each branches of the source.
- [https://github.com/f1dz/a433-microservices](https://github.com/f1dz/a433-microservices)
