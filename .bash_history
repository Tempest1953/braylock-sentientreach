apt update && apt upgrade -y
apt install -y git curl unzip ufw
apt install -y docker.io docker-compose
systemctl enable docker
systemctl start docker
ufw allow OpenSSH
ufw allow 80
ufw allow 443
ufw --force enable
mkdir /opt/braylock
cd /opt/braylock
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs build-essential
apt install -y postgresql postgresql-contrib
systemctl enable postgresql
systemctl start postgresql
sudo -u postgres psql -c "CREATE DATABASE outreach;"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE outreach TO braylock;"
sudo -u postgres psql -c "CREATE DATABASE outreach;"
sudo -u postgres psql -c "CREATE USER braylock WITH PASSWORD 'SecurePass123';"
sudo -u postgres psql -c "GRANT ALL PRIVILEGES ON DATABASE outreach TO braylock;"
sudo -u postgres psql -c "\l"
cd /opt/braylock
git clone https://github.com/BraylockGlobalAI/braylock-sentientreach.git .
Reboot
reboot
uptime
systemctl status postgresql
cd /opt/braylock
git clone https://github.com/YOUR-USERNAME/braylock-sentientreach.git .
reboot
