FROM centos:8
LABEL maintainer="Alex Li <guoqiangli@vmware.com>"
ENV PACKER_VERSION=1.6.4
ENV GOVC_VERSION=v0.23.0
ENV GOVC_INSECURE=true
ENV TIME_ZONE Asia/Shanghai
RUN ln -sf /usr/share/zoneinfo/${TIME_ZONE} /etc/localtime
ADD ./govc /usr/bin/
ADD ./packer /usr/bin/
ADD ./packer-provisioner-windows-update /usr/bin
RUN chmod a+x /usr/bin/govc /usr/bin/packer /usr/bin/packer-provisioner-windows-update && yum install -y  genisoimage
WORKDIR /tmp
CMD ["/bin/bash"]
