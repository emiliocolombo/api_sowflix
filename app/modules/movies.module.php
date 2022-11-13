<?php
    require_once './app/controllers/movie-api.controller.php';
    class MoviesModule{
        private $db;

        public function __construct(){
            $this->db = $this->connectDb();
        }

       function connectDb(){
           $db = new PDO('mysql:host=localhost;'.'dbname=db_showflix;charset=utf8', 'root', '');
           return $db;
       }

        public function getAll($sort, $order){
            $str_query = 'SELECT * FROM peliculas ORDER BY ';

            $columns = array(
                'nombre_pelicula' => 'nombre_pelicula',
                'imagen' => 'imagen',
                'id' => 'id',
                'director' => 'director',
                'genero' => 'genero',
                'descripcion' => 'descripcion'
            );

            if (isset($columns[$sort])) {
                $str_query .= $columns[$sort] ." ";
            } 
            else {
                return null;
            }
            if (strtoupper($order) == 'ASC' || strtoupper($order) == 'DESC') {
                $str_query .= $order;
            }
            else{
                return null;
            }
            $query = $this->db->prepare($str_query); //LIMIT $starts_where, $size_pages
            $query->execute();
            $movies = $query->fetchAll(PDO::FETCH_OBJ);
            return $movies;
        }

        function getOnce($id){
           $query = $this->db->prepare("SELECT * FROM peliculas WHERE id = ?");
           $query->execute($id);
           $data = $query->fetch(PDO::FETCH_OBJ);
           return $data;
        }

        function deleteMovie($id){
            echo $id;
            $query = $this->db->prepare('DELETE FROM peliculas WHERE id = ?');
            $query->execute([$id]);
        }

        function editMovie($id, $nombre, $imagen, $duracion, $director, $genero, $descripcion){
            $query = $this->db->prepare("UPDATE peliculas SET nombre_pelicula = ?, imagen = ?, duracion = ?, director = ?, genero = ?, descripcion = ?  WHERE id = ?");
            $query->execute([$nombre, $imagen, $duracion, $director, $genero, $descripcion, $id]);
        }

        function getByGenre($genre){
            $query = $this->db->prepare("SELECT * FROM peliculas WHERE genero = ?");
            $query->execute([$genre]);
            $data = $query->fetchAll(PDO::FETCH_OBJ);
            return $data;
        }

        function addMovie($nombre, $imagen, $duracion, $director, $genero, $descripcion){
            $query = $this->db->prepare("INSERT INTO peliculas (nombre_pelicula, imagen, duracion, director, genero, descripcion) VALUES (?, ?, ?, ?, ?, ?);");
            $query->execute([$nombre, $imagen, $duracion, $director, $genero, $descripcion]);
        }

        function getLastId(){
            $query = $this->db->prepare("SELECT MAX(id) AS id FROM peliculas");
            $query->execute();
            $data = $query->fetch(PDO::FETCH_OBJ);
            return $data->id;
        }

        function getMoviesSize(){
            $query = $this->db->prepare("SELECT * FROM peliculas");
            $query->execute();
            $data = $query->fetchAll(PDO::FETCH_NUM);
            return count($data);
        }
    }
?>