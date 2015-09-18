FROM centos:centos6
MAINTAINER Anand
RUN yum clean all
RUN yum install -y curl
RUN curl -L https://getchef.com/chef/install.sh | bash -s -- -v <%= version %> -P container
ADD chef-repo /opt/chef-repo
CMD ["bash"]
