sudo -E su
puppet config set masterport 32771
puppet config set server puppet
puppet config set --section agent environment development
puppet config set --section agent certname "centos-test-server-$(date +"%s")"