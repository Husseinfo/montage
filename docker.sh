git clone https://github.com/storyful/montage
cd /montage
apt-get update && apt-get install mysql-server -y
service mysql start && mysql --user root --execute 'CREATE USER greenday@localhost IDENTIFIED BY ""' && mysql --user root --execute 'DROP DATABASE IF EXISTS greenday_v2' && mysql --user root --execute 'CREATE DATABASE greenday_v2 CHARACTER SET utf8 COLLATE utf8_general_ci' && mysql --user root --execute 'GRANT ALL PRIVILEGES ON greenday_v2.* TO greenday@localhost IDENTIFIED BY ""'
apt-get install ruby ruby-dev -y
gem install sass
apt-get install python-pip python-dev build-essential -y
pip install virtualenv virtualenvwrapper
/bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && pip install -r requirements.txt"
/bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && pip install zc.buildout"
/bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && ./rebuild_env.sh"
/bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && buildout"
echo '{ "allow_root": true }' > /root/.bowerrc
/montage/bin/npm install && /montage/bin/bower install
/bin/bash -c "source /usr/local/bin/virtualenvwrapper.sh && source ~/.bashrc && mkvirtualenv GREENDAY && workon GREENDAY && buildout"
curl -sL https://deb.nodesource.com/setup_4.x | bash -
apt-get install -y nodejs
npm install -g grunt
npm install bower -g
cp ./appengine/src/greenday_core/settings/local.py.sample ./appengine/src/greenday_core/settings/local.py
sed -i 's/RAND_egd,//g' /montage/parts/google_appengine/google/appengine/dist27/socket.py
