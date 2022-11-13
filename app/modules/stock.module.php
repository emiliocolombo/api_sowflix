<?php
    class StockModule{
        private $db;

        public function __construct(){
            $this->db = $this->connectDb();
        }

       function connectDb(){
           $db = new PDO('mysql:host=localhost;'.'dbname=db_showflix;charset=utf8', 'root', '');
           return $db;
       }

        function getAll(){
            $query = $this->db->prepare("SELECT * FROM stock");
            $query->execute();
            $data = $query->fetchAll(PDO::FETCH_OBJ);
            return $data;
        }

        function getOnce($id){
           $query = $this->db->prepare("SELECT * FROM stock WHERE id_pelicula = $id");
           $query->execute();
           $data = $query->fetch(PDO::FETCH_OBJ);
           return $data;
        }

        function decrementStock($idMovie, $stockData){
            $cantPeliculasMenosUno = ($stockData->cant_copias - 1);
            $query = $this->db->prepare("UPDATE stock SET cant_copias = ? WHERE id_pelicula = ?");
            $query->execute([$cantPeliculasMenosUno, $idMovie]);
        }
    
        function delete($idMovie){
            $query = $this->db->prepare('DELETE FROM stock WHERE id_pelicula = ?');
            $query->execute([$idMovie]);
        }
    }
?>