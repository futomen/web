# Futomen Website
Futomen website, running on www.futomen.net

This is the main website.

# Building:

Just use the Makefile

% docker build -f Dockerfile.nginx -t mynginx_image1 --build-arg CRT_FILE=futomen_net.crt --build-arg KEY_FILE=futomen_net.key .

Be sure to follow the instructions for the namecheap crt and bundle file (specifically, adding the line return at the end of the crt file when cat'ing:
https://www.namecheap.com/support/knowledgebase/article.aspx/9419/33/installing-an-ssl-certificate-on-nginx/

# Running
% docker run --name futomen-web -p 80:80 -p 443:443 -d shigmas/futomen-web:<version>
