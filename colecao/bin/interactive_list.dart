import 'dart:io';

void main(List<String> args) {
  List people = ['Leonardo', 'Ismael', 'Gabriel', 'Castelo'];
  print('Informe um Index: ');
  int index = int.parse(stdin.readLineSync());
  print(people.elementAt(index));
  print(people[index]);
}