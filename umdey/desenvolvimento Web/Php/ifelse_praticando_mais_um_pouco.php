<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <?
    
    $usuario_possui_cartao_loja = true;
    $valor_compra = 100.50;

    $valor_frete = 200;
    
    $recebeu_desconto_frete = true;

    if ($usuario_possui_cartao_loja && $valor_compra >= 400) {
        $valor_frete = 0;
    } else if($usuario_possui_cartao_loja && $valor_compra >= 300 ) {
       $valor_frete = 50;
    } else if($usuario_possui_cartao_loja && $valor_compra >= 200) {
        $valor_frete = 100;
    } else $recebeu_desconto_frete = false;
    
    $valor_compra + $valor_frete;

    ?>

  <h1>Detalhes de pedido</h1>

  <p>Possui cartão da loja?</p>
  <? 
    if ($usuario_possui_cartao_loja) {
        echo 'Sim';
    } else {
        echo 'Não';
    }
  ?>

  <p>Recebeu desconto do frete</p>
  <?php
     if ($recebeu_desconto_frete) {
       echo 'Sim';
     } else {
        echo 'Não';
     }
  ?>

  <p>Valor da compra: <?= $valor_compra ?></p>

</body>
</html>