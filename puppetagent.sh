timedatectl set-timezone Europe/Kiev
rpm -Uvh https://yum.puppetlabs.com/puppetlabs-release-pc1-el-7.noarch.rpm
yum update
yum -y install puppet-agent
systemctl start puppet
puppet agent -t
