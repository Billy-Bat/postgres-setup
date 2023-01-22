docker container stop "pgadmin4test"
docker rm "pgadmin4test"
docker run --name "pgadmin4test" \
           -p 80:80 \
           --network "dbnetworktest" \
           -e "PGADMIN_DEFAULT_EMAIL=billybat2046@gmail.com" \
           -e "PGADMIN_DEFAULT_PASSWORD=main" \
           -e "SCRIPT_NAME=/pgadmin4" \
           -v data:/home/pgadmin \
           dpage/pgadmin4