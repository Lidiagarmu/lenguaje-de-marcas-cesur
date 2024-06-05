<?php
// Generar un número aleatorio entre 1 y 100
$numero_secreto = rand(1, 100);
$intentos = 0;

echo "¡Bienvenido al juego de adivinar el número!\n";

do {
    // Solicitar al usuario que adivine el número
    $adivina = (int) readline("Ingresa tu número (entre 1 y 100): ");
    $intentos++;

    // Comprobar si el número es demasiado alto, demasiado bajo o correcto
    if ($adivina < $numero_secreto) {
        echo "El número es demasiado bajo. ¡Inténtalo de nuevo!\n";
    } elseif ($adivina > $numero_secreto) {
        echo "El número es demasiado alto. ¡Inténtalo de nuevo!\n";
    } else {
        echo "¡Felicidades! ¡Adivinaste el número en $intentos intentos!\n";
    }
} while ($adivina != $numero_secreto);
?>