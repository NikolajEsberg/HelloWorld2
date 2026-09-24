set -e
docker run -d --name min-container nginx
docker run -d --name min-anden-container nginx
docker exec  min-container ls /usr/share/nginx/html
docker logs min-container
docker stop min-container
docker stop min-anden-container
docker rm min-container
docker rn min-anden-container
