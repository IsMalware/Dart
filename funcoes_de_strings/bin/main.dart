void main(List<String> arguments) {
  String palavra = 'Cachorro quente';

  // Tornar toda a palavra em minúsculo
  print(palavra.toLowerCase());

  // Tornar toda a palavra em maiúsculo
  print(palavra.toUpperCase());

  // Retirar espaços ao redor da palavra
  print(palavra.trim());

  // Separar um texto
  print(palavra.split(' '));

  // Recortar uma string
  print(palavra.substring(2, 5));

  // Verifica se uma string começa com determinado caractere
  print(palavra.startsWith('C'));

  // Como trocar valores de uma string
  print(palavra.replaceAll('o', 'B'));
  print(palavra.replaceFirst('r', 'R'));
  print(palavra.replaceRange(1, 4, 'Banana'));

  // Verifica se tem um determinado valor
  print(palavra.contains('a'));

  // Informa onde inicia um index
  print(palavra.indexOf('quente'));

  // Informa o comprimento da String
  print(palavra.length);

  // Verifica se a String termina com determinado caracter
  print(palavra.endsWith('r'));

  // Compara uma String com outra
  print(palavra.compareTo('Batata')); // se for igual retorna 0 se for igual retorna 1

  // Verifica se é do tipo String
  print(palavra is String);

  // Alterar o tipo de uma String
  print(int.parse('32') is int);
}
