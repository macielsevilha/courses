<html>

<head>
    <meta charset="UTF-8">
    <title>Curso PHP</title>
</head>

<body>
    <?php
    //in_array() -> true ou false para a existência do que está sendo procurado
    //array_search() -> retorna o indice do valor pesquisado, caso ele exista

    $lista_frutas = ['Banana', 'Maçã', 'Morango', 'Uva'];

    echo '<pre>';
    print_r($lista_frutas);
    echo '</pre>';

    //$existe = in_array('Abacate', $lista_frutas); //true -> texto = 1 | false -> texto = vazio

    $existe = array_search('Uva', $lista_frutas); //se nao encontra nada, retorna null

    if($existe != null){
        echo 'Sim, o valor pesquisado existe no array';
    } else {
        echo 'Não, o valor pesquisado não existe no array';
    }

    $lista_coisas=[
        'frutas' => $lista_frutas, 
        'pessoas'=>['João', 'Maria']
    ];

    echo '<pre>';
    print_r($lista_coisas);
    echo '</pre>';

    echo in_array('Uva', $lista_coisas['frutas']);

    ?>
</body>

</html>