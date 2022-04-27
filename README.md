# Nginx-cors

# Requirements
`Vagrant`
`VirtualBox`
`Docker`

### Steps
1. Vagrant up
2. Vagrant ssh nginx
3. mkdir nginx
4. cd nginx
5. git pull
6. docker build .
7. get the ID of the build
8. docker run -it -p 8080:8080 ID
9. Go to you browser and enter the URL http://172.17.8.110:8080
10. You will see the landing page of NGINX
