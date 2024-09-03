"""
Steps to Install Nginx in Kal-Linux

"""
"""
Step 1: Install Nginx
        Update the package index:

""""
sudo apt update

# 1. Install Nginx:

sudo apt install nginx

# 2. Start Nginx:

sudo systemctl start nginx

# 3. Enable Nginx to start on boot:

sudo systemctl enable nginx

# 4. Check if Nginx is running:

Open a web browser and navigate to http://localhost.
You should see the Nginx welcome page

""" 
Step 2: Host "My Personal Website" on Nginx server

"""
# 1. Navigate to the web root directory:

cd /var/www/html

# 2. Create new Directory:

sudo mkdir mywebsite

# 3. Open new Directory:

cd mywebsite

# 4. Create a file named index.html:

sudo nano index.html  # copy the code from website.html and paste it into index.html

# 5. Save and close the file:

Press Ctrl + X, then Y, and Enter.

# 6. Access your website:

Open a web browser and go to http://localhost.
You should see the content of your index.html file.

"""
Step 3: Maintain and Monitor Your Nginx Web Server

"""

# 1. Check Nginx status:

sudo systemctl status nginx

# 2. View Nginx logs:

Access logs: /var/log/nginx/access.log
Error logs: /var/log/nginx/error.log

# 3. Update your server:

Regularly update your server and Nginx to keep it secure:

sudo apt update && sudo apt upgrade