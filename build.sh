while getopts d: flag
do
    case "${flag}" in
        d) database=${OPTARG};;
    esac
done

echo "Instalando wordpress, com o banco de dados $database";

sudo chmod -R 755 db_data
docker-compose down --volumes --remove-orphans
# docker-compose build --no-cache --build-arg MIGRATE_DATABASE=$database
docker-compose build --build-arg MIGRATE_DATABASE=$database
docker-compose up -d

docker exec -it histonline_wordpress bash -c "sh /var/www/html/migrate.sh"