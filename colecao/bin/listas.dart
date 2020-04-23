void main(List<String> args) {
  // Criando uma lista
  var lista = [1, 2, 3, 4];
  print('O Tamanho da lista é: ${ lista.length }');
  print('O primeiro item da lista é: ${ lista[0] }');
  print(lista.elementAt(0));
  print('\n');

  // Lista que armazena qualquer coisa
  var coisas = [];
  coisas.add('Computador');
  coisas.add(1);
  coisas.add(true);
  print(coisas);

  // Lista que armazena apenas os tipos que forem declarados entre <>
  // List<tipo> nome = List();
  var numeros = [];
  numeros.add(1);
  numeros.add(2);
  // numeros.add('oi'); isso causa erro, pq a lista é de int
  numeros.add(3);
  print(numeros);

}