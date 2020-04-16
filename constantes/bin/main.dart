void main(List<String> arguments) {

  // Constante em tempo de compilação, ou seja, ele já deixa especificado no disco rigido
  const pi = 3.14;
  print('Valor de PI é: ${pi}');

  // Constante em tempo de execução, ou seja, ele carrega na memória RAM
  final ismael = Pessoa();
  print(ismael);
}

class Pessoa {
  
}