FROM centos-systemd:7
COPY nginx.repo /etc/yum.repos.d/nginx.repo
RUN yum -y install nginx; yum clean all; systemctl enable nginx
EXPOSE 80
CMD ["/usr/sbin/init"]
