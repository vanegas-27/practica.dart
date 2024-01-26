## APUNTES DE DART

> `void()`
- se debe de agrupar en una funcion void para que el codigo pueda ser ejecutado


> `DART`
- es un lenguaje de tipado fuerte ya que se debe de especificar su tipo de variable


> `print()` 
- esto lo utilizamos para poder imprimir datos


> `comentarios`
- //
- ///
- /** */
- se utilizan para documentar los trabajos o lineas de codigos


> `tipo de datos`
- int
- double
- String
- bool

> `tipo de dato automatico` 
- dynamic
- var
- final
- const
- estas asignan el tipo automaticamente dependiendo el valor


> `variables`
- se debe de especificar su tipo de dato, el nombre y seguido su valor y terminar con ; ejm...

- int numero = 10; 
- double precio = 2.000; 
- dynamic puntos = "2000";

> `POST...`
- la variable `dynamic` puede cambiar de valor y de tipo cuando sea necesario al contrario de `var`, esta solo puede cambiar su valor pero respetando el tipo de dato que es la variable, y `final` es un tipo de variable constante y no permite cambiar su valor una vez se haya inicializado

- la diferencia entre `final` y `const` es que `final` no es completamente inmutable y se pueden agregar mas valores, al contrario de `const`, esta si inmutable y despues que se haya inicializado no puede ser modificada


> `seguridad nula`

- esta opcion noa ayuda a definir si nuestra variables pueden ser de tipo null o no


> `conversion de tipo`

- Si se desea cambiar de tipo de datos se puede hacer con...

- int edad = 20.0.toInt();
- String nombre = 20.toString();

- o an algunos casos se debe de parsear el dato

- int edad = int.parse("21");
- double precio = double.parse("3.500");

> `Concatenación e interpolación`

- `Concatenación` nos sirve para unir mas de dos textos en un mismo string

var numero = 20;

- print("hola "+ numero)

- la `interpolación` nos sirve para lo mismo solo que cambia la forma como se le indica

- print("hola $numero")
- print("hola ${numero.key}")

> `Escapar caracteres y salto de línea`

- si de casualidad se necesita concatenar el signo $ se hace `Escapar`

print("\$100 $variable")

- esta nos ayuda a `salto de línea` para modificar el texto

print("hola mundo \n desde dart");

print(''' 
    hola mundo
    desde aca

    chao chao...
''')

> `Utilidades de strings`


- `.length`: nos devuelve cuantas palabras tiene nuestro string
- `.isEmpty`: nos dice si es vacío o no
- `.isNotEmpty`: nos dice si no está vacío
- `.contains("davidson")`: nos permite saber si una cadena contiene otra
- `.startsWith("David"):`: nos permite verificar si una cadena comiena con un string
- `.endsWith("son")` :nos permite verificar si una cadena termina con un string
- `.substring(3,7)`: nos permite cortar el string entre dos posiciones
- `.split(",")`: nos permite separar un string por algo especifico
- `.replaceAll("David","Davit")` : reemplaza todo lo que encuentre una coincidencia
- `.trim()` : elimina los espacios al inicio y final del texto
- `to`
  
> `metodos de lista`

- `removeAt(3)` este nos elimina un item segun el indice
- `add("David")` agregamos un elemento a la lista
- `insert(2,"David")` inserta un elemento en una determinada posicion
- `clear()` limpia toda la lista
- `shuffle()` mezcla todos los elementos de la lista de manera aleatoria
- `sort()` ordena los elementos de menor a mayor
- `reverse()` invierte la lista
- `sublist(indice-start,indide-end)` nos devuelve una sub lista
- `where((tipo variable) => condicion )` nos devuelve una lista con los que cumplan
- `reduce((acum,item) => acum + item)` nos devuelve un valor total de todos los elementos

> `map o diccionarios`

- este nos ayuda a crear un objecto

Map datos = {
    "davidson" : 30,
    "isabel" : 20
};

  
Map<String , int> datos1 = {
  "davidson" : 30,
  "isabel" : 20
};
  
- `remove()` este elimina un valor del Map, se le pasa la key

datos1.remove("davidson);

- modificar un dato existente
datos1["isabel"] = "mariana";

- crear un nuevo dato
datos1.nuevoDato = valor;

> `FUNCIONES`

- esta nos ayuda a agrupar o tener un conjunto de instrucciones para luego ser ejecutadas

nombre(parametro/s...){

}

- si esta retorna un valor se le indica el tipo de dato que retornara

String nombre(parametro/s...){

  return "hola mundo";
}

- para los parametros opcionales es tan simple como hacer
-> [tipo? variable]
-> {tipo? variable}

- para los parametros con valor por defecto es tan simple como

-> [String? apellido = "vanegas"] || [String apellido = "vanegas"]
-> {String? apellido = "vanegas"} || {String apellido = "vanegas"}

-> la principal diferencia es que con `[]` se aplica normal, pero con `{}` se debe de llamar la variable y su valor

> ejm...

void n([int? edad] , {String nombre}){print(nombre - edad)}

-> n(20);
-> n(nombre : "davidson");
-> n(20 , nombre : "davidson");





# POO

-> `clases y atributos`

- esta nos ayuda a modular ciertos bloques de codigo para asi facilitarnos la vida en un futuro y hacer las instruciones mas modulares

> `atributos`: variables o sentencias que hacen parte de la clase

> `metodos`: funciones especificas creadas dentro de la clase, estos se pueden llamar al hacer instancia o en ocasiones sin necesidad de hacerla

> `constructor`: este se encarga de inicializar los atributos o ejecutar una sentencia al momento de crear una instancia. y se implementa con el mismo nombre de la clase

- `POST` hay 3 maneras de insertar datos a una clase, ya es desicion de cada quien como utiliza o llama a la clase.

> n°1: `normal` <este es como comun se utiliza>

Alumno(String nombre, String apellido, int edad) {
  this.nombre = nombre;
  this.apellido = apellido;
  this.edad = edad;
}

new Alumno("davidon","vanegas",21);
----- // ----- //


> n°2: `opcionales forzadamente` <se le debe de indicar la clave y el valor>

Alumno({this.nombre, this.apellido, this.edad});

new Alumno(nombre: "davidon", apellido: "vanegas", edad: 21);
----- // ----- //

> n°3: `opcionales comun` <este se le pasa el valor, pero ya depende del orden asignado en el constructor>

Alumno(String nombre, [String? apellido , int? edad]);

new Alumno("davidson", "vanegas"); <- no se le pasa edad


> `encapsulamineto` en dart solo hay dos tipos `publico` y `privado` estos nos sirven para proteger variables o los metodos, por defecto los metodos son publicos y para decir que sea privado se le pone un _ antes del nombre.

void _metodo(){

};

> `get & set` este nos ayuda a modificar o saber el valor de un metodo o variable de la forma correcta


> `herencia` esta nos ayuda a heredar variables o metodos a otras clases

es tan simple como utilizar la palabra reservada `extends` y seguido la clase base

class Base{
  codigo...
}

class Auto extends Base{
  codigo...
}


> `clases abstractas` estas sirven como modelo de maquetacion para una clase base, es decir, estas heredan comportamientos a clases padres y estas clases padres son las instanciadas

es tan simple como poner `abstract` antes de class y eso basta y al momento de querer heredar se utiliza `extends`

abstract class Animal{

  String? nombre,
  int? edad

  void sonido(String soni ){
    print(soni);
  }

};

class Perro extends Animal{

  void ladrar(){
    print("ladrador")
  }

  sonido("ni ideaaaa");

}

> `interface`: esta nos ayuda a declarar metodos o bloques de codigos que se ejecutaran de manera diferente en cada clase

y esta se crea como una clase normal pero al momento de utilizarla se necesita la palabra reservada `implements` y para llamar a nuestos metodos se utiliza la palabra `@override` y en la linea de abajo el metodo correspondiente, este metodo se implementa diferente en cada clase

class interface{
  codigo...

  saludar(){
    codigo...
  }
}

class base1 implements interface{
  codigo...

  @override
  saludar() {
    // TODO: implement saludar
  }

}

> `mixin` este nos ayuda a tener indefinidos metodos para implementar a nuestras clases, ya sean de validacion o lo que sea necesario, estas son utiles cuando debemos hacer logica extensa y que se puede incluso reutilizar en otras, es tan simple como crear un `mixin` y al momento de implementarlo a una clase con la palabra `with`

mixin validaciones{

  validarEdad(int edad){}
  validarNombre(String nombre){}

}

class Alumno with validaciones{
  int edad;
  String nombre;

  validarEdad(20);
  validarNombre("Juan");

}

- `programacion asincrona`

la programacion asincrona nos ayuda a mejorar la manera en que se procesan los datos y es muy util ya que podemos estar ejecutando varios procesos sin frenar la aplicacion

para utilizar se debe de implementar la palabar `Future` y esta va acompañada de `async`

Future nameFunction() async{
  //codigo...
}

### post

- si la funcion retorna o no se debe de especificar para ser mas conciso el codigo al momento de leer, tambien saber que si lo que se retorna esta envuelto por un `Future.function` se trata como un elemento future

Future<String> saludo() async{
  return Future.delayed(Duration(seconds: 3), () => "Hola Mundo)
}

- al querer ver el resulto se llama a la funcion asincrona con el metodo `then`, muy parecido a js

saludo().then((String texto) => {
  print(texto);
}).cat


> `Future.delayed`: funcion para crear un retraso a la respuesta, esta resive `Duration(), callback`
delayed

> `await` en ocasiones lo utilizaremos para esperar cierta respuesta y este nos facilita mucho mas el codigo ya que no hayq ue concatenar con el then y catchError. sino que se guarda en la variable sea cual sea el resultado

String saludo = await saludo();


> `try catch`

try{
  String saludo = await saludo();
  print(saludo);
}catch(err){
  print(err);
}
