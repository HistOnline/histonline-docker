`histonline_wordpress` PHP Version 7.3.28

## Instalação

1. Instale as imagens e containers necessários para rodar a aplicação
```sh
docker-compose down --volumes --remove-orphans
docker-compose build --no-cache
```
Ou, caso esteja reiniciando o ambiente de desenvolvimento  
```sh
docker-compose down --remove-orphans --volumes && sudo rm -rf db_data && docker-compose up -d --build
```

2. Coloque todos or arquivos nas respectivas pastas e execute o script de migração de dados informando o banco de dados a ser migrado
```sh
# Para ambiente de desenvolvimento adicionar o argumento -d como no exemplo abaixo
docker exec -it histonline_wordpress bash -c "chmod +x migrate.sh && ./migrate.sh -d"
```

Está pronto para desenvolvimento!

## Subindo para ambiente de produção

Utilize os scripts produzidos para essa finalidade, lembre-se que as alterações no banco de dados devem ser feitas apenas no ambiente de produção

## Comandos úteis

```sh
# Acessar container wordpress
docker exec -it histonline_wordpress bash
# Reiniciando tudo em ambiente de desenvolvimento
docker-compose down --remove-orphans --volumes && sudo rm -rf db_data && docker-compose up -d --build
```