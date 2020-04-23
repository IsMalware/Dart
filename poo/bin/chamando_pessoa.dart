import 'package:poo/pessoa.dart';

void main(List<String> args) {
  
  var pessoa1 = Pessoa();
  pessoa1.altura = 1.80;
  pessoa1.nome = 'Ismael Aquino';
  pessoa1.idade = 18;
  pessoa1.aniversario();
  print('${pessoa1.nome}, ${pessoa1.altura}, ${pessoa1.idade} ');

  var pessoa2 = Pessoa();
  pessoa2.nome = 'Gabriel Aquino';
  pessoa2.idade = 21;
  pessoa2.altura = 1.90;
  pessoa2.dormir();
}