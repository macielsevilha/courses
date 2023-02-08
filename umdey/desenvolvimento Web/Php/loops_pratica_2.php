<html>

<head>
    <meta charset="UTF-8">
    <title>Curso PHP</title>
</head>

<body>
    <?php
    $funcionarios = array(
        array('nome' => 'João', 'salario'=> 2500, 'data_nascimento' => "06/03/1970"),
        array('nome' => 'Maria', 'salario'=> 3000),
        array('nome' => 'Júlia', 'salario'=> 2200)
    );

    echo '<pre>';
    print_r($funcionarios);
    echo '</pre>';

    /* foreach($funcionarios as $idx => $nome_funcionario){
        echo "ID {$idx} - Nome: {$nome_funcionario}  <br />";
        
    } */
    foreach($funcionarios as $idx => $nome_funcionario){
        foreach($nome_funcionario as $idx2 => $valor){
            echo "$idx2 - $valor <br />";
        }
        echo "<hr />";
    }

    ?>
</body>

</html>