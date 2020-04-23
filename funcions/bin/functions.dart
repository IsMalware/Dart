void main() {
  test();
  sayHello('Ismael Aquino');
  print('${centimetrosParaMetros(100)} Metros');
  print(nomeCompleto('Ismael', 'Aquino'));
}

void test(){
  print('Esse é um teste hehehe');
}
void sayHello(String name){
  print('Hello $name');
}
double centimetrosParaMetros(num cm){
  return cm / 100.0;
}
String nomeCompleto(String primeiroNome, String sobrenome){
  return ('$primeiroNome $sobrenome');
}