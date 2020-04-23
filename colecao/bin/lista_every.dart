void main(List<String> args) {
  // Cria uma lista
  var inteiros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // every é uma função de lista que usando uma arroy function returna um resultado booleano
  var resultado = inteiros.every((resultado) => resultado > 0);
  print(resultado);

  // utilizando uma lista de String
  var palavras = ['ismael','Aquino','Gabriel','Aquino'];
  // Utilizando a função every para verificar se a lista contem algum caractere
  resultado = palavras.every((resultado) => resultado.contains('a'));
  print(resultado);
}