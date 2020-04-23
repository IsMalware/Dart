import 'package:poo/singleton.dart';

void main(List<String> args) {
  Pessoa.instancia.nome = 'Ismael'; 
  print(Pessoa.instancia.nome);

  var pessoa1 = Pessoa.instancia;
  pessoa1.nome = 'Ismael';
  print(Pessoa.instancia.nome);
  var pessoa2 = Pessoa.instancia;
  pessoa2.nome = 'Isma';
  print(Pessoa.instancia.nome);

  // Singleton factory
  var animal1 = AnimalFactory();
  print(animal1.nome);
  animal1.nome = 'Mila';
  print(animal1.nome);

  var animal2 = AnimalFactory();
  print(animal2.nome);

  print(AnimalFactory.instancia.nome);
  AnimalFactory.instancia.nome = 'Pretinha';
  print(animal1.nome);

}