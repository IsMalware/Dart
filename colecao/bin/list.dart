void main(List<String> arguments) {
  List test = [1, 2, 3, 4];
  print('Tamanho da lista: ${test.length}');
  print('Primeiro item da lista: ${ test[0] }');
  print(test.elementAt(1));

  // Lista genêrica
  List coisas = new List();
  coisas.add(1);
  coisas.add('Computador');
  coisas.add(true);
  print(coisas);

  // Lista tipada
  List<int> number = new List<int>();
  number.add(1);
  number.add(2);
  number.add(3);
  print(number);

  // Lista de Textos
  List<String> text = new List<String>();
  text.add('Olá mundo');
  text.add('Olá');
  text.add('mundo');
  print(text);

}
