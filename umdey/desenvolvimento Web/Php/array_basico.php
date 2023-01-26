<html>

<head>
    <meta charset="UTF-8">
    <title>Curso PHP</title>
</head>

<body>
    <?php
    //arrays sequenciais (numéricos)
    // $lista_frutas = array('Banana', 'Maçã', 'Morango', 'Uva', 'Abacate');
    /*
    $lista_frutas = ['Banana', 'Maçã', 'Morango', 'Uva', 'Abacate'];
    $lista_frutas[] = 'Abacaxi';
    
    
    //-----funções para debugar!-----
    echo '<pre>';
        var_dump($lista_frutas);
    echo '</pre>';
    
    echo '<hr />';
    echo '<pre>';
        print_r($lista_frutas);
    echo '</pre>';
    //-----funções para debugar!----- 
    
    
    echo $lista_frutas[4];
    */

    //associativos
    $lista_frutas = [
        'a' => 'Banana',
        'b' => 'Maçã',
        'x' => 'Morango',
        'z' => 'Uva',
        '2' => 'Abacate'
    ];
    $lista_frutas['w'] = 'Abacaxi';
    echo '<pre>';
    var_dump($lista_frutas);
    echo '</pre>';
    echo $lista_frutas["x"];
    ?>
</body>

</html>