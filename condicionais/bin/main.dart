import 'dart:io';
void main(List<String> arguments) {
  print('Informe sua idade: ');
  int idade = int.parse(stdin.readLineSync());

  if (idade == 23) {
    print('Você tem 23 anos!');
  }
}
