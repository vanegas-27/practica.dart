void main() {
//   int edad = 20.0.toInt();

//   String nombre = 20.toString();
//   print(nombre);

//   double precio = 2.000;

//   bool pregunta = false;

//   nombre.toUpperCase();

//   if(condicion){
//     //sentencia
//   }else if(){
//     //sentencia
//   }else{
//     //sentencia
//   }

//   switch(){
//     case 1:
//       //codigo
//       break;
//     case 2:
//       //codigo
//       break;
//     default:
//       //codigo
//       break;
//   }

// // tabla uno
//   for (int i = 1; i < 10; i++) {
//     print("1 * $i = ${i * 1}");
//   }

//   // foreach

//   String name = "davidson";
//   for (int item in name.codeUnits) {
//     print("-> ${String.fromCharCode(item)}");
//   }

//   while(condicion){

//   // codigo a ejecutar mientras la condicion sea verdadera

//   }

//   List array = ["hola", 20, "gay"];
//   print(array[0]);

//   List<String> nombres = ["davidson", "dasd"];

//   nombres.forEach((String item) => print(item));

//   Map<String, int> datos1 = {"davidson": 30, "isabel": 20};

//   for (String names in datos1.keys) {
//     print(names);
//   }
//   ;

//   for (int edad in datos1.values) {
//     print(edad);
//   }
//   ;

//   for (MapEntry values in datos1.entries) {
//     print("${values.key} tiene ${values.value} años");
//   }

//   datos1.forEach((key, item) => print("$key & $item"));

//   int suma(int num , int num2, List names){
//     return num * num2;
//   };

//   suma(2,3,["dasd",20]);

//   bool info(List<int> num ){
//     return (num[0] > num[1])?true:false;
//   };

//   info([30,20]);

  void fun(String nombre, [String? apellido = "vanegas"]) {
    print("hola soy $nombre $apellido");
  }

  ;

  fun("davidson", "vanegas");

  Alumno dav = Alumno("davinson", "vanegas", 20);

  dav.saludar();
}

class Alumno {
  String? _ciudad;
  String? _nombre;
  String? _apellido;
  int? _edad;

  Alumno(String nombre, String apellido, int edad, {int num = 20}) {
    this._nombre = nombre;
    this._apellido = apellido;
    this._edad = edad;
  }

  get get_nombre => this._nombre;
  set set_nombre(String nombre) => this._nombre = nombre;

  // -> new Alumno("davidon","vanegas",21);

  // Alumno(String ciudad, {this.nombre, this.apellido, this.edad}) {
  //   this.ciudad = ciudad;
  // }

  // -> new Alumno(nombre: "davidon", apellido: "vanegas", edad: 21);

  // Alumno(String nombre, [int? edad, String? apellido]);

  // Alumno(this.nombre, [int? this.edad, String? this.apellido]);

  saludar() {
    print(this._ciudad);
    print("holaa, soy ${this._nombre} ${this._apellido} y tengo ${this._edad}");
  }
}
