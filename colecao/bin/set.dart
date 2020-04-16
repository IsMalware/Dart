void main(List<String> args) {
  // Set é uma coleção desordenada que não aceita valores duplicados
  Set<int> numeros = Set<int>();
  numeros.add(1);
  numeros.add(2);
  numeros.add(3);
  numeros.add(1);
  numeros.add(2);

  print(numeros);
}