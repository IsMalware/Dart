void main(List<String> args) {
  var hello = digaOla('Ismael Aquino');
  print(hello);
  agora(hello, true);
}
// para um parâmetro ser opcional basta por o parâmetro entre []
String digaOla([String nome = '']){
  return 'Olá $nome';
}

void agora(String texto, [bool time = false]){

  var now = DateTime.now();
  var hora = ', a hora atual é: ${now.hour}:${ now.minute > 10 ? now.minute : '0${now.minute}'}:${now.second}';
  
  print('$texto, hoje é dia ${now.day}/${ now.month > 10 ? now.month : '0${now.month}' }/${now.year}${time ? hora : ''}');
}