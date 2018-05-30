sudo puppet config set masterport 32771
sudo puppet config set server puppet
sudo puppet config set --section agent environment development
sudo puppet config set --section agent certname "centos-test-server-$(date +"%s")"