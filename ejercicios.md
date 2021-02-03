## Capítulo 1

Lo primero que aparece es el clásico juego de adivinanzas y hay que escribir comentarios sobre que se supone que hace el código mostrado.

```
Mensaje de bienvenida
Pide datos de entrada y lo guarda en una variable
Convierte la entrada en un número
Si el numero es igual a cinco
    Entonces muestras que ganaste
Si no
    Muestra que perdiste
Muestra que jugaste demasiado
```

El programa funciona pero tiene una limitación, no da suficiente información al que juega, una pista no vendría mal.

```
Mensaje de bienvenida
Pide datos de entrada y lo guarda en una variable
Convierte la entrada en un número
Si el número es igual a cinco
    Entonces muestras que ganaste
Si no
    Si el número es mayor que cinco
        Da una pista, es muy alto
    Si no
        El número es bajo
Muestra que jugaste demasiado
```

Los usuarios se siguen quejando, dicen que un intento no es suficiente, hay que permitirles seguir intentando hasta que adivinen. Para eso hace falta un bucle.

```
Mensaje de bienvenida
Variable en cero para iniciar el bucle
Mientras la variable sea distinta de cinco
    Pide datos de entrada y lo guarda en una variable
    Convierte la entrada en un número
    Si el número es igual a cinco
        Entonces muestras que ganaste
    Si no
        Si el número es mayor que cinco
            Da una pista, es muy alto
        Si no
            El número es bajo
    Muestra que jugaste demasiado
```

Lo suyo sería que el número a adivinar no sea siempre el mismo, para ello modificar el programa para sea aleatorio entre 1 y 10

```
Mensaje de bienvenida
Guardo en una variable el número secreto
Variable en cero para iniciar el bucle
Mientras la variable sea distinta de nro secreto
    Pide datos de entrada y lo guarda en una variable
    Convierte la entrada en un número
    Si el número es igual a nro secreto
        Entonces muestras que ganaste
    Si no
        Si el número es mayor que nro secreto
            Da una pista, es muy alto
        Si no
            El número es bajo
    Muestra que jugaste demasiado
```