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
    $valor_compra = 200.50;

    $valor_frete = 70;
    $recebeu_desconto_frete = false;

    if ($usuario_possui_cartao_loja && $valor_compra >= 100) {
        $recebeu_desconto_frete = true;
        $valor_frete = 0;
    } else {
        $valor_compra += $valor_frete;
    }
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