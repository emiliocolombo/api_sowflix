<?php
    require_once './libs/Router.php';
    require_once './app/controllers/movie-api.controller.php';

    // crea el router
    $router = new Router();

    // defina la tabla de ruteo
    $router->addRoute('movies', 'GET', 'MovieApiController', 'getMovies');
    $router->addRoute('movies/:ID', 'GET', 'MovieApiController', 'getMovie');
    $router->addRoute('movies/:ID', 'DELETE', 'MovieApiController', 'deleteMovie');
    $router->addRoute('movies/:ID', 'POST', 'MovieApiController', 'insertMovie'); 
    $router->addRoute('movies/:ID', 'PUT', 'MovieApiController', 'editMovie'); 

    // ejecuta la ruta (sea cual sea)
    $router->route($_GET["resource"], $_SERVER['REQUEST_METHOD']);
?>