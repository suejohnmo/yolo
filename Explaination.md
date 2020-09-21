## Choice of the base image on which to build each container.

Alpine Docker.
This makes Alpine Linux a great image base for utilities and even production applications. Read more here. https://hub.docker.com/_/alpine

## Dockerfile directives used in the creation and running of each container.

The following files are available on the repo;

# client.DockerFile;

FROM alpine:latest
RUN npm install
RUN npm run build
RUN npm install -g serve
EXPOSE 3000

# backend.DockerFile;

FROM alpine:latest
RUN npm install

EXPOSE 5000

## Docker-compose Networking (Application port allocation and a bridge network implementation) where necessary.

## Docker-compose volume definition and usage (where necessary).

## Git workflow used to achieve the task.

- git status
- git add .
- git commit -m ""
- git push origin master

If you experience an error try;

- git push --set-upstream origin master

Then push the origin master once more

## Successful running of the applications and if not, debugging measures applied.

- sudo docker-compose up --build
- sudo docker-compose
- sudo docker images
- sudo docker container ls / sudo docker ps

- sudo docker stop 'container' : If you want to stop a specific container(after running ps command)

## Good practices such as Docker image tag naming standards for ease of identification of images and containers.
