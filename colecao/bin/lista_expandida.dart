void main(List<String> args) {
  // Criando uma MATRIZ(uma lista de lista)
  var lista = [
    [0, 1, 2],
    [3, 4, 5]
  ];

  // Criando uma lista expandida(Juntando as listas)
  List listaExpandida = lista.expand((elemento) => elemento).toList();
  print(listaExpandida);

  var numeros = [1, 2, 1.2, 1.5, 28];
  var inteiros = [1, 2, 3, 4, 5];
  var numeroFlutuantes = [2.3, 5.4, 6.2, 1.2];
  var dinamica = [];
  // Forma simples de expandir uma lista
  dinamica = numeros + inteiros;
  print(dinamica);
  // Forma recomendada, usando "..." que é o equivalente a "..addAll()", que 
  // adiciona todos os valores presente dentro da sua respectiva lista
  dinamica = [
    ...numeros,
    ...inteiros,
    ...numeroFlutuantes,
    ...listaExpandida
  ];
  print(dinamica);

}