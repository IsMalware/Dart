void main(List<String> arguments) {

  // Tipo "genêrico" de variável numérica
  num age = 23;
  print('Tipo genêrico ${age}');

  // Tipo de variável numérica Inteiro
  int pessoas = 5;
  print('Isto é um número inteiro: ${pessoas}');

  // Tipo de variável numérica Float ou Double
  double decimal = 5.5;
  print('Isto é um número decimal: ${decimal}');

  // Conversão de tipos
  int test = int.parse('12');
  print('Número convertido de inteiro para String ${test}');

  double test2 = double.parse('10');
  print('Número convertido de double para String ${test2}');

  int erro = int.parse('50.52', onError: (source) => 0);
  print('Ops, deu erro! $erro');

  // Cálculos
  int dogyears = 7;
  int dogage = age * dogyears;
  print('Sua idade em idade de cachorro é: ${dogage}');

}
