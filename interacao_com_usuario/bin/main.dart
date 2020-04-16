import 'dart:io';

void main(List<String> arguments) {
  print('Qual seu nome?\n');
  var name = stdin.readLineSync();

  name.isEmpty ? print('Nenhum nome foi informado!!') : print('Olá ${name}');
}
