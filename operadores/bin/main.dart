void main(List<String> arguments) {
  int num1 = 1;
  int num2 = 2;
  dynamic res = 0;

  res = num1 + num2;
  print('Adição: $res');

  res = num1 - num2;
  print('Subtração: $res');

  res = num1 * num2;
  print('Multiplicação: $res');

  res = num1 / num2;
  print('Divisão: $res');

  res = num1 ~/ num2;
  print('Resto inteiro: $res');

  res = num1 % num2;
  print('Resto da divisão: $res');

  res++;
  print('Incrementeando: $res');

  res--;
  print('Decrementando: $res');

  // Comparadores
  // ----------------
  // > maior que
  // < menor que
  // >= maior ou igual
  // <= menor ou igual
  // != diferente de
  // == igual a

  bool testComp = (10 != 20);
  print(testComp);

  // Comparador Ou/Or
  // --------------------
  // true true -> true
  // true false -> true
  // false true -> true
  // false false -> false
  bool testOr = (false || true);
  print(testOr);

  // Comparador AND/E
  // -----------------
  // true true -> true
  // true false -> false
  // false true -> false
  // fasle false -> fasle
  bool testAnd = (true && false);
  print(testAnd);

  bool complex = !(10 > 20) && ((30 < 20)|| testAnd);
  print(complex);

}