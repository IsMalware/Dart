void main(List<String> args) {
  // Set = valores desordenados que não se repetem
  var numeros = Set<int>();
  numeros.add(2);
  numeros.add(2); // Tentativa de duplicar um número
  numeros.add(1);
  numeros.add(3);
  // Ele não printa o numero duplicado
  print(numeros);
}