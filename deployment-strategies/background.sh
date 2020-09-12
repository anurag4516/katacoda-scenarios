yum install epel-release -y
yum install ansible -y
yum install -y yum-utils
yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo
yum -y install terraform
git clone https://github.com/anurag4516/thoughtworks_assgnment.git
cd thoughtworks_assgnment/
