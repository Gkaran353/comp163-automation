# COMP163 - Setup Script
# Author: Karan Gumber

sudo apt update && sudo apt upgrade -y

sudo apt install nginx -y
sudo systemctl enable nginx
sudo systemctl start nginx

sudo ufw allow 'Nginx Full'
sudo ufw allow OpenSSH
sudo ufw enable

sudo apt install certbot python3-certbot-nginx -y

echo "<h1>Welcome to Karan's Server</h1>" | sudo tee /var/www/html/index.html

sudo systemctl restart nginx

echo "Setup Complete!"
