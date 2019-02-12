# Etherpad
Deploy etherpad-lite with mysql Database, with Docker Swarm/Compose v3


#Create first :

- docker secret: 
Example:
 echo 'YzdiYjJlNmI2NjgwNjE0YTE5ZjNiM2NkN' | docker secret create db_pass -

- docker config: 
Example:
 docker config create etherpad settings.json 



