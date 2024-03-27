Set-Location ..
docker build . -f Docker-images\Dockerfile_geopandas -t geopandas_etl
docker-compose up -d