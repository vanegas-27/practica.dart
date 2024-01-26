void main() async{

  saludar()
  .then((String texto) => print(texto))
  .catchError((err) => print(err))
  .whenComplete(() => print("adios adios"));


  String adios = await decirAdios();
  print(adios);


}

  
Future<String> saludar() async{
  return Future.delayed(Duration(seconds: 2), () => "Hola, como estás?");
}

Future<String> decirAdios() async{
  return Future.delayed(Duration(seconds: 2),() => "adios mundoo.");
}