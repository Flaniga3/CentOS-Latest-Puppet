# Perform yum updates
sudo yum update -y

# Enable puppet repository
sudo rpm -Uvh https://yum.puppetlabs.com/puppet5/puppet5-release-el-7.noarch.rpm

# Install Puppet
sudo yum install -y puppet-agent

# Update .bashrc files
sudo /bin/bash -c "echo 'export PATH=/opt/puppetlabs/bin:$PATH' >> /root/.bashrc"
sudo /bin/bash -c "echo 'export PATH=/opt/puppetlabs/bin:$PATH' >> ~/.bashrc"

# Stop puppet service and update hosts file
sudo systemctl stop puppet
sudo /bin/bash -c "echo '10.0.2.2 puppet' >> /etc/hosts"