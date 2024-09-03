""" 
Steps to Install Apache2 in Kali Linux

"""
# Step-1: Update & Install Apache2 

sudo apt update && sudo apt install apache2 -y

# Enable Apache to start on boot:

sudo systemctl enable apache2

# Start Apache:

sudo systemctl start apache2

# Check Apache status:

sudo systemctl status apache2

"""
Step-2: Host "My Personal Website" on Apache2 Server

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
Step-3: Secure Your Server with SSL

"""

# 1. Install Certbot:

sudo apt install certbot python3-certbot-apache

# 2. Obtain and install the SSL certificate:

sudo certbot --apache -d localhost -d www.localhost

""" 
3. Follow the on-screen instructions to complete the process.

4. To test SSL configuration:

Visit https://localhost to ensure your site is served over HTTPS.

"""
"""
Step 4: Maintain and Monitor Your Web Server

"""
# 1.Check Apache status:

sudo systemctl status apache2

# 2.View Apache logs:

Access logs: /var/log/apache2/access.log
Error logs: /var/log/apache2/error.log

# 3. Update your server:

Regularly update your server and Apache to keep it secure:

sudo apt update && sudo apt upgrade