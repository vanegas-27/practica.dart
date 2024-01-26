
void main() {
  
  Perro bruno = Perro();
  bruno.ladrar();
  bruno.saludar();

  Gato fiona = Gato();
  fiona.maullar();
  fiona.saludar();
}


abstract class Interface {
  
  saludar(){}

}



abstract class Base implements Interface{
  String? nombre;
  String? dueno;
  String? nacimineto;
  bool? vacuna;
}




class Perro extends Base with Validaciones{

  String? color;
  int? edad;
  String? raza;

  Perro(){
    this.nombre = "bruno";
    this.dueno = "maria ines";
    this.nacimineto = "de la calle";
    this.vacuna = true;
  }

  @override
  saludar() {
    print("hola soy ${this.nombre} y soy un perro");
  }

  void ladrar(){
    print("gua gua");
    print(esVacunado(this.vacuna??false));

  }

  
  
}


class Gato extends Base with Validaciones{

  String? color;
  String? raza;
  int? edad;
  int? vidas;


  Gato(){
    this.nombre = "Gatito";
    this.dueno = "Juan";
    this.nacimineto = "Domestico";
    this.vacuna=false;
  }

  @override
  saludar() {
    print("hola soy ${this.nombre} y sou un gato");
  }

  void maullar(){
    print("miaww miaww");
    print(esVacunado(this.vacuna??false));
  }

}


mixin Validaciones{

  String _mensaje(bool res){
    return (res)?"el animal esta vacunado":"el animal no esta vacunado";
  }

  String esVacunado(bool vacuna) => (vacuna)?_mensaje(vacuna):_mensaje(vacuna);

}
