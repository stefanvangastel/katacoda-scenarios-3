git clone https://github.com/katacoda/dotnet-aspnet-core-example.git app
sleep 1
rm app/Dockerfile app/Dockerfile.multi app/Makefile app/docker-compose.yml app/.dockerignore

docker rmi -f $(docker images -aq)

docker image pull microsoft/dotnet:1.1.1-sdk