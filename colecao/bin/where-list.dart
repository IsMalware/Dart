void main(List<String> args) {
  // Where é uma especie de filtro
  List<dynamic> idades = [10, 20, 15, 12, 34, 5, 8, 24];
  print(idades.where((a) => a is int).toList());
  
  List<dynamic> maioresDeIdade = idades.where((result) => result >= 18).toList();
  print(maioresDeIdade);
}