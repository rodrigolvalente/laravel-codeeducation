Imagem Laravel: rlvalente/laravel:codeeducation

Step:

start via dopcker-compose

```sh
# docker-compose up -d
```

execute composer install

```sh
# docker-compose exec app composer install
```

crie o arquivo .env baseado no .env.example

```sh
# docker-compose exec app cp -a .env.example .env
```

execute: php artisan key:generate

```sh
# docker-compose exec app php artisan key:generate
```

execute: php artisan migrate

```sh
# docker-compose exec app php artisan migrate
```

acesse a aplicacao no browser

```
https://localhost:8000
```
