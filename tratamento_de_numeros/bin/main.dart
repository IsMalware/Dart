void main() {
  num numero = 1.98;
  print(numero.round());
  print(numero.compareTo(20)); // Se for -1 é inferior, se for 0 é igual, se for 1 é superior
  print(numero.toInt()); // Converte o numero para Inteiro
  print(10.toDouble()); // Converte o número para Double
  print(numero.toString() is String); // Converte o número para String e verifica se é verdade 
  print(numero.toStringAsFixed(1)); // Limita o numero de casas decimais
  print(numero.isInfinite); // verifica se o número é infinito
  print((numero/0).isInfinite); // verifica se o número é infinito
  print(numero.truncate()); // Retira todos os número depois da vírgula
  print(numero.floor()); // Arredonda para o inteiro mais próximo
}
