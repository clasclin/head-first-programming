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

## Capítulo 3 - functions

A veces el precio no baja lo suficiente y eso genera problemas de stock, es necesario poder comprar incluso con un precio algo elevado. Una función que consiga el precio va a ser útil ya que va a evitar duplicar código.

```
Defino función conseguir precio
    Hacer una petitción a una página web
    Decodifica el texto
    Extrae el precio de manera inteligente
    Lo muestra por pantalla
```

Reescribo el código para hacer uso de la función anterior

```
Pregunto al usuario si quiere un reporte de mergency
Si lo quiere
    Muestro el precio por pantalla
Si no
    Bucle donde
        Consulto el precio cada quince minutos hasta que baje
        Muestro el precio por pantalla
    ¡Ahora es momento de comprar!
```

Cambié la parte en la que se pide enviar datos a twitter porque sería demasiado complicado para lo que se quiere hacer,
como el contenido es relevante en cuanto a funciones, como pasar argumentos, y el alcance de las variables lo modifiqué
para que en lugar de enviar datos a twitter simplemente los guarde en un archivo 'twitter.txt'

La lógica del ejercicio es más o menos así.

```
Defino una función que guarda la fecha y hora en un archivo

Defino una función que consigue el precio del café

Pregunto al usuario si quiere un reporte de emergencia
Si
    Consulto el precio y lo guardo en archivo
Si no
    Consulto el precio cada cierto tiempo hasta que baje
    Guardo en archivo cuando es momento de comprar
```

## Capítulo 4 - data in files and arrays

Encontrar el puntaje mayor en el archivo 'results.txt'

```
Variable con el maximo puntaje, por ahora cero
Abro el archivo 'results.txt'
Para cada linea
    Si el valor es mayor que el registrado
        Pasa a ser el mayor valor
Cierro el archivo
Muestro cual fue el mayor puntaje
```

Si bien la idea era buena no contabas con los nombres de los surfistas y eso rompió el programa

```
Variable con el maximo puntaje, por ahora cero
Abro el archivo 'results.txt'
Para cada linea
    Separo cada línea en surfista y puntaje
    Si el valor es mayor que el registrado
        Pasa a ser el mayor valor
Cierro el archivo
Muestro cual fue el mayor puntaje
```

Tal vez sea mejor idea guardar los puntajes en un arreglo

```
Declaro un arreglo
Abro el archivo
Para cada linea del archivo
    Separo el nombre y el puntaje
    Guardo el puntaje en el arreglo
Cierro el archivo
Muestro los puntajes
```

Es una mejora pero todavía falta asociar los nombres con los puntajes, para eso se emplea un hash o diccionario según el lenguaje

## Capítulo 5 - hashes and databases

Reescribir el programa para que utilice un diccionario

```
Creo un diccionario vacio
Abro el archivo
Para cada linea del archivo
    Separo el nombre y el puntaje
    Guardo el nombre y el puntaje en el diccionario
Cierro el archivo
Muestro los puntajes y nombres ordenados
```

Implementar una función que acepte un id y devuelva la información si está disponible sino ignorar

```
Definir función que acepte un parametro
    Abro el archivo
    Para cada linea del archivo
        Creo un hash con datos
        Si el dato que busco coincide con el id
            Cierro el archivo
            Retorno el hash
    Cierro el archivo
    Retorno un hash vacio

Pido el id a buscar
Llamo a la funcion
Si encontro algo
    Mostrar los datos prolijamente
```

Te fue tan bien que los de la tele te pidieron que implementes lo mismo, solo que ellos tienen sus datos en una base de datos. Toca modificar la función que se ocupa de entrar los detalles

```
Definir función que acepte un parametro
    Me conecto a la base de datos
    Para cada fila de la base
        Si el dato que busco coincide con el id
            Creo un hash con datos
            Retorno el hash
    Retorno un hash vacio

Pido el id a buscar
Llamo a la funcion
Si encontro algo
    Mostrar los datos prolijamente
```

## Capítulo 6 - modular programming

Escribir un programa que se encargue de registrar las ventas del día en un archivo 'transactions.txt' para luego poder enviarselo al banco, se registra el nro de tarjeta, el precio y el item

```
Definir una función que se ocupe del registro

Un arreglo que contenga los items
Un arreglo que contenga los precios

Un bucle que sirva de menú
    Muestro cada opción
    Pido datos de entrada
    Si la opción es salir
        Salgo
    Si no
        Pido el nro de tarjeta de credito
        Guardo la transacción
```

Cambio el formato del archivo de transacciones que se envia al banco, y no solo eso, ahora hay un gimnasio usando el programa. Lo mejor sería separar la función que se ocupa del registro en su propio módulo y así actualizar tan solo un archivo, evitando duplicar código.

Un nuevo descuento es posible de la cafeteria de starbuzz