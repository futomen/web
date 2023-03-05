# Futomen Website
Futomen website, running on www.futomen.net

This is the main website.

# Building:

% docker build -f Dockerfile.nginx -t mynginx_image1 --build-arg CRT_FILE=futomen_net.crt --build-arg KEY_FILE=futomen_net.key .

Be sure to follow the instructions for the namecheap crt and bundle file (specifically, adding the line return at the end of the crt file when cat'ing.
