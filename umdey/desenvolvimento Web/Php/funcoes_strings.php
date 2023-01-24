<html>

<head>
    <meta charset="UTF-8">
    <title>Curso PHP</title>
</head>

<body>

    <?php
    $texto = 'curso completo de php';

    //string to lower
    echo $texto. '<br />';
    echo strtolower($texto);
    echo '<hr/>';

    //string to upper
    echo $texto. '<br />';
    echo strtoupper($texto);
    echo '<hr/>';

    //upper case first
    echo $texto. '<br />';
    echo ucfirst($texto);
    echo '<hr/>';

    //string lenght
    echo $texto. '<br />';
    echo strlen($texto);
    echo '<hr/>';
    
    //string replace
    echo $texto. '<br />';
    echo str_replace('.', ',', '22.20'); // é case-sensitive
    echo '<hr/>';
    
    //string 
    echo $texto. '<br />';
    //'Curso Completo de PHP'
    //0,1,2,3,4,5 ... 20
    echo substr($texto,0 ,14) . '...';
    echo '<hr/>';



    ?>
</body>

</html>