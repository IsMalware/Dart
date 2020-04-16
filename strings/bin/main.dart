void main(List<String> arguments) {
  String name = 'Ismael Aquino';
  print('Olá, ${name}');

  // Dividir uma String
  var splittedName = name.split(' ');
  print('Primeiro nome: ${splittedName[0]}');
  print('Sobrenome: ${splittedName[1]}');

  // Seleciona onde iniciar e onde terminar a String
  var nickName = name.substring(0, 3);
  print('Apelido: $nickName');

  // Saber a posição de uma letra na String
  String sopa = 'Sopa de letrinhas';
  int index = sopa.indexOf(' de ');
  print('A sopa é: ${sopa.substring(index).trim()}');

  // Saber o tamanho da String
  print(name.length);

  // Saber se a String tem algo especifico
  print(name.contains('#'));
}
