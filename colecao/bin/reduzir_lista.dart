void main(List<String> args) {
  // Crie uma lista
  var numerosPares = List.generate(10, (i) => i*2);
  print(numerosPares);

  // Reduce compara todos os valores da lista e reduz eles a um só
  var resultado = numerosPares.reduce((anterior, proximo){
    return anterior + proximo;
  });
  print(resultado);
}