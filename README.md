# docker-node-volume

<!-- 
docker build -t node-data:volume .                                                                                                                                              -- builds an image with  name and tag node-data:volume
docker run -p 3000:80 -d -t --rm --name data-app -v feedback:/app/feedback node-data:volume                                                                                     -- creates the container with name data-app based on the image node-data:volume, with volume folder 
                                                                                                                                                                                   named feedback, the rest of commands are already known
                                                                                                                                                                                   by creating a container with those commands, the saved txt file will be persisted even if the container is deleted.
docker volume ls                                                                                                                                                                -- list the volumes from docker
docker volume rm volumeID                                                                                                                                                       -- removes the volume by ID
docker run -d -p 3000:80 --rm --name data-app -v feedback:/app/feedback -v "/usr/local/var/www/docker/docker-udemy/data-volumes-01-starting-setup:/app" -v /                    -- creates a second volume allowing to change the code immediatelly without necessity of rebuilding 
app/node_modules node-data:volume                                                                                                                                                  the container, the first volume is the container volume, the second is the path for the source code, and 
                                                                                                                                                                                   the third is the folder to use the installation folder persisted, second folder can be $(pwd)
                                                                                                                                                                                   
 -->