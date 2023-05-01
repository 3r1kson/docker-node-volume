# docker-node-volume

<!-- 
docker build -t node-data:volume .                                                                                                                                   -- builds an image with  name and tag node-data:volume
docker build -t node_data:dev --build-arg DEFAULT_PORT=8000 .                                                                                                        -- builds an image specifying the port without changing the Dockerfile, the ARG is saved in that thought
docker run -p 3000:80 -d -t --rm --name data-app -v feedback:/app/feedback node-data:volume                                                                          -- creates the container with name data-app based on the image node-data:volume, with volume folder 
                                                                                                                                                                        named feedback, the rest of commands are already known
                                                                                                                                                                        by creating a container with those commands, the saved txt file will be persisted even if the container is deleted.
docker volume ls                                                                                                                                                    -- list the volumes from docker
docker volume rm volumeID                                                                                                                                           -- removes the volume by ID
docker run -d -p 3000:80 --rm --name data-app -v feedback:/app/feedback -v "/usr/local/var/www/docker/docker-udemy/data-volumes-01-starting-setup:/app" -v /        -- creates a second volume allowing to change the code immediatelly without necessity of rebuilding 
app/node_modules node-data:volume                                                                                                                                      the container, the first volume is the container volume, the second is the path for the source code, and 
                                                                                                                                                                       the third is the folder to use the installation folder persisted, second folder can be $(pwd)                          
docker volume containerID                                                                                                                                           -- shows the logs from the volume
docker run -d -p 3000:8000 -e PORT=8000 --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app -v /app/node_modules feedback-app:env                     -- insert the port inside the docker command which is used by the code process.env.PORT
docker run -d -p 3000:8000 --env-file ./.env --rm --name feedback-app -v feedback:/app/feedback -v $(pwd):/app -v /app/node_modules feedback-app:env                -- uses the port contained in the file .env
-->