docker run -p 5432:5432 \
           --name "postgresqldbtest" \
           --network "dbnetworktest" \
           -e "POSTGRES_USER=main" \
           -e "POSTGRES_PASSWORD=main" \
           -v /data:/var/lib/postgresql/data \
           -it \
           postgres:latest

# enter container
# docker exec -it postgresqldbtest psql -U main