# cakephp-4.x-mysql-docker-card-game


# Playing Card Game

## features
Randomly distribute deck of 52 cards to N number of players  
CRUD on decks

## environment
PHP 7.4.16 (cli)  
CakePHP Version 4.2.4  
MySQL Ver 14.14 Distrib 5.7.33, for Linux (x86_64)  

## docker
docker-compose up -d

## configure database
### /html/config/app_local.php
    'Datasources' => [
      'default' => [
          'host' => 'mysql',
          'username' => 'cakeuser',
          'password' => 'password',
          'database' => 'cakedb',

          'url' => env('DATABASE_URL', null),
      ],

### phpMyAdmin  
http://127.0.0.1:8080/  

### Website
home page http://127.0.0.1/  
<img src="../master/screenshots/game_card_portal.PNG" width="40%">  

add, edit, update, delete decks 
http://127.0.0.1/cards  
<img src="../master/screenshots/cards_db_crud.PNG" width="40%">  
