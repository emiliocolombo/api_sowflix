<?php
    require_once './app/controllers/api.controller.php';
    require_once './app/modules/movies.module.php';
    require_once './app/modules/stock.module.php';
    class MovieApiController extends ApiController{
        
        function __construct(){
            parent::__construct(); 
            $this->module = new MoviesModule();
        }

        public function getMovies(){
            $defaultColumn = "id";
            $defaultOrder = "ASC";
            $defaultOffSet = 0;
            foreach ($_GET as $i => $valor) {
                if ($i != 'sort' && $i != 'order' && $i != 'limit' && $i != 'resource' && $i != 'filter' && $i != 'filtervalue' && $i != 'offset') {
                        $this->view->response('Bad Request', 400);
                        die();
                    }
            }
            //si estan ambos, columna y orden hacer esto
            if (isset($_GET['sort']) && isset($_GET['order'])) {
                $movies = $this->module->getAll($_GET['sort'], $_GET['order']);
            }
            //si esta solo sort hacer esto
            else if (isset($_GET['sort'])) {
                $movies = $this->module->getAll($_GET['sort'], $defaultOrder);
            }
            //si esta solo order hacer esto
            else if (isset($_GET['order'])) {
                $movies = $this->module->getAll($defaultColumn, $_GET['order']);
            } else {
                $movies = $this->module->getAll($defaultColumn, $defaultOrder);
            }
            //si nada de esto me devolvio null
            if ($movies != null) {
                //checkeo filtro
                if (isset($_GET['filter']) && isset($_GET['filtervalue'])) {
                    if (!is_string($_GET['filter'])){
                        $this->view->response('Bad request', 400);
                        die();
                    }
                    $movies = $this->filtrar($_GET['filter'], $_GET['filtervalue'], $movies);
                }
                //checkeo limit y offset
                if (isset($_GET['limit']) && isset($_GET['offset'])){
                    if (!ctype_digit($_GET['limit']) || !ctype_digit($_GET['offset'])){
                        $this->view->response('Bad request', 400);
                        die();
                    }
                    $offset = $_GET['offset'];
                    $movies = $this->paginar($_GET['limit'], $movies, $_GET['offset']);
                }
                //limit solo
                else if (isset($_GET['limit'])) {
                    if (!ctype_digit($_GET['limit'])){
                        $this->view->response('Bad request', 400);
                        die();
                    }
                    $offset = $defaultOffSet;
                    $movies = $this->paginar($_GET['limit'], $movies, $offset);
                }
                else if (isset($_GET['offset'])) {
                    if (!ctype_digit($_GET['offset'])){
                        $this->view->response('Bad request', 400);
                        die();
                    }
                    $defaultLimit = count($movies);
                    $movies = $this->paginar($defaultLimit, $movies, $_GET['offset']);
                }
                $this->view->response($movies, 200);
            } else {
                $this->view->response('Bad Request3', 400);
            }
        }

        public function filtrar($filter, $value, $movies){
            $filteredMovies = [];
            foreach ($movies as $movie) {
                if($movie->$filter == $value){
                    array_push($filteredMovies, $movie);
                }
            }            
            return $filteredMovies;
        }

        public function paginar($limit, $movies, $offset){
            if (array_slice($movies, $offset, $limit) == []){
                $this->view->response("inserte un numero de offset mas chico por favor", 400);
                die();
            }
            return array_slice($movies, $offset, $limit);
        }

        public function getMovie($params = null) {
            $movies = $this->module->getOnce($params[':ID']);
            $this->view->response($movies);
        }

        public function deleteMovie($params = null) {    
            $id = $params[':ID'];
            $movie = $this->module->getOnce($id);
            if ($movie) {
                $stockModule = new StockModule();
                $stockModule->delete($id);
                $this->module->deleteMovie($id);
                $this->view->response($movie);
            } else 
                $this->view->response("La tarea con el id=$id no existe", 404);
        }

        public function insertMovie($params = null) {
            $movie = $this->getData();
            if (empty($movie->nombre_pelicula) || empty($movie->imagen) || empty($movie->duracion) || empty($movie->director) || empty($movie->genero) || empty($movie->descripcion)) {
                $this->view->response("Complete los datos", 400);
            } else {
                $this->module->addMovie($movie->nombre_pelicula, $movie->imagen, $movie->duracion, $movie->director, $movie->genero, $movie->descripcion);
                $lastId = $this->module->getLastId();
                $movie2 = $this->module->getOnce($lastId);
                if ($movie2){
                    $this->view->response($movie, 201);
                }
                else{
                    $this->view->response("error al insertar la pelicula", 500);
                }
            }
        }

        public function editMovie($params = null) {
            $id = $params[':ID'];
            $movie = $this->getData();
            if (empty($movie->nombre_pelicula) || empty($movie->imagen) || empty($movie->duracion) || empty($movie->director) || empty($movie->genero) || empty($movie->descripcion)) {
                $this->view->response("Complete los datos", 400);
            } else {
                $movieToEdit = $this->module->getOnce($id);
                if ($movieToEdit){
                    $this->module->editMovie($id, $movie->nombre_pelicula, $movie->imagen, $movie->duracion, $movie->director, $movie->genero, $movie->descripcion);
                    $this->view->response($movie, 201);
                }
                else{
                    $this->view->response("error la pelicula no existe", 404);
                }
            }
        }

        function getMoviesSize(){
            $moviesSize = $this->module->getMoviesSize();
            return $moviesSize;
        }
    }
?>