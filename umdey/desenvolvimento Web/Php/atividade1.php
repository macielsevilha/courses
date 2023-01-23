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
      $idade = 34;
      $peso = 45.45;
    ?>

    <h1>Sistema de saúde</h1>
    <h2>status de doador: <?= ($idade >= 16 && $idade <= 69) && $peso >= 50 ? 'Atende aos requisitos': 'Não atende os requisitos'; ?> </h2>

    
</body>
</html>

