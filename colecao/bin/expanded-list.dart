void main(List<String> args) {
  var lista = [
    [0, 1, 2],
    [3, 4, 5]
  ];

  List<dynamic> listaExpandida = lista.expand((elemento) => elemento).toList();
  print(listaExpandida);

  List<num> numeros = [1, 2.3, 13.2, 50, 12.54];
  List<int> inteiros = [1, 23, 443, 5554, 211];
  List<double> flutuantes = [0.1, 12.32, 12.3, 15.12];

  List<dynamic> listaDinamica = [];
  listaDinamica = numeros + inteiros;
  print(listaDinamica);

  listaDinamica = []..addAll(numeros)..addAll(inteiros)..addAll(flutuantes)..addAll(listaExpandida);
  print(listaDinamica);
}