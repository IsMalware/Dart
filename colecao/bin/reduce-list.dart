void main(List<String> args) {
  List<int> numerosPares = List.generate(10, (i) => i * 2);
  print(numerosPares);

  int resultado = numerosPares.reduce((anterior, atual) {
    print('$anterior $atual');
    return anterior + atual;
  });

  print(resultado);
}