# NGINX on Centos with systemd

`docker build --rm -t centos-systemd-nginx:7 .`

To run it on Mac use the following command:

    docker run -d -e=container=docker --stop-signal=SIGRTMIN+3 -p 80:80 --tmpfs /tmp --tmpfs /run -v /sys/fs/cgroup:/sys/fs/cgroup:ro centos-systemd-nginx:7

Start NGINX command

    systemctl start nginx

Stop NGINX command

    systemctl stop nginx

Restart NGINX command

    systemctl restart nginx

Find status of NGINX server command

    systemctl status nginx

## Failures
I attempted to use an open source version of the [OpenAM Policy Agent for NGINX](https://github.com/osstech-jp/nginx-mod-am)