<?php


class Api
{

    public function getCep($param)
    {
        $query = "SELECT regiao, uf, faixa FROM faixa_cep WHERE $param";
        $link_conexao = Database::getConnection();
        $exec = $link_conexao->query($query);
        if ($exec) {
            $result = $exec->fetch_all(MYSQLI_ASSOC);
            return $result;
        }else{
            return ['error'=> 'parametro invalido'];
        }
        
    }
}
