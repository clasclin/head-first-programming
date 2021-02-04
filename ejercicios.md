## Capítulo 1 - starting to code

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
El primer capítulo introduce la toma de decisiones y los bucles.

## Capítulo 2 - textual data

Hay que ayudar al ceo de una cafetería, tuvo la idea de consultar el precio del café online y en base a eso tomar decisiones.

```
Importar las librerías necesarias
Hacer una petitción a una página web
Decodifica el texto
Muestra el código de la página
```

El código anterior muestra toda la página y solo se necesita el precio del café. Hace falta una pequeña modificación.

```
Importar las librerías necesarias
Hacer una petitción a una página web
Decodifica el texto
Extrae el precio en una variable
Muestra el precio
```

La url ha cambiado, de hecho hay precios diferenciados para grandes clientes. Resulta conveniente extraer el precio sin necesidad de saber exactamente donde encontrarlo.

```
Importar las librerías necesarias
Hacer una petitción a una página web
Decodifica el texto
Extrae el precio de manera inteligente
Muestra el precio
```

No es necesario avisar de la compra todo el tiempo, solo cuando el precio sea conveniente.

```
Importar las librerías necesarias
Precio alto
Mientras el precio no sea bajo
    Hacer una petitción a una página web
    Decodifica el texto
    Extrae el precio de manera inteligente
¡Ahora es momento de comprar!
```

El segundo capítulo refuerza la toma de decisiones, los bucles, e incluye funciones para el procesamiento de texto y el acceso a la web.