<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php
abstract class metodoPago{
    abstract function procesarPago($total);
}

class pagoTarjeta extends metodoPago{
    public function procesarPago($total){
        echo "Pago de " . $total . "€ procesado con Tarjeta de Crédito";
    }
}

class pagoBizum extends metodoPago{
    public function procesarPago($total){
        echo "Pago de " . $total . "€ procesado mediante Bizum de forma instantanea";
    }
}

function ejecutarCobro(MetodoPago $pasarela, $total){
    echo $pasarela->procesarPago($total);
}
?>
<?php
$tarjeta = new pagoTarjeta();
ejecutarCobro($tarjeta, 100);
?>
</body>
</html>