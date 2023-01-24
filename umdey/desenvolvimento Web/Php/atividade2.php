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
      function calcularImpostoRenda($salario = 0)
      {
        $salario = (double) $salario;
        switch ($salario) {
            case $salario < 1903.98: 
               return 'Isento';
              break;
            case $salario >= 1903.99 && $salario <= 2826.65:
               return '7.5%';
              break;
            case $salario >= 2826.66 && $salario <= 3751.05: 
               return '15%';
              break;
            case $salario >= 3751.06 && $salario <= 4664.68:
               return '22.5%';
              break;
            default:
                return '27.5%';
              break;
        }
      }

      define('D_SALARIO', 2000.50);
      $imposto = calcularImpostoRenda(D_SALARIO);

      $resultado = [];

      if($imposto == false XOR $imposto == true) {
        
        $imposto = (double) $imposto;
        $resultado = D_SALARIO * $imposto / 100;
      }

      $resultado = D_SALARIO - $resultado;
      $imposto = (float) $imposto;

    ?>

    <h1>Seu Salário é: <?= D_SALARIO ?>, Imposto de renda: <?= $imposto ?>%</h1>
    <h2>Seu Salário atual é de: <?= $resultado ?></h2>
</body>
</html>