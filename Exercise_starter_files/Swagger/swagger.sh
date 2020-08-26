# Run the swagger-ui project locally, requires docker to be installed and running
# Will pull the latest swagger-ui docker image and then will try to run it on port 80
#
# Once running, it is accessible at: http://localhost/
#
# If the user doesn't have enough permissions to use port 80, modify the local
# port to something above 8000 that is available.

docker pull swaggerapi/swagger-ui
docker run -p 80:8080 swaggerapi/swagger-ui
