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
5. git clone https://github.com/ghardadouAymen90/Nginx-cors.git
6. docker build .
7. get the ID of the build
8. docker run -it -p 8080:8080 ID
9. Go to you browser and enter the URL http://172.17.8.110:8080
10. You will see the landing page of NGINX


# What is the purpose of this server?
This Nginx server is working as an interface proxy between your backends(not authorising your browser via cross domain origin) and your frontEnd APP in your browser.
In this proxy, you will find only a configured location for the purpose of a demo
