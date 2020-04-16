void main(List<String> args) {
  // Map: é um par chave de valo, ou, JSON
  
  Map<int, String> ddds = Map();
  ddds[11] = 'São Paulo';
  ddds[99] = 'Maranhão';
  ddds[98] = 'Maranhão interior';
  
  print(ddds);

  Map<String, dynamic> pessoa = Map();
  pessoa['nome'] = 'Enzo';
  pessoa['idade'] = 15;
  pessoa['altura'] = 1.76;

  print(pessoa);

  // Map que não permite valores repitidos
  Map<String, String> familia = Map<String, String>();
  familia.putIfAbsent('Pai', () => 'Pedro');
  familia.putIfAbsent('Filho', () => 'Ismael');
  familia.putIfAbsent('Filha', () => 'Paula');
  familia.putIfAbsent('Filha', () => 'Roberta');
  print(familia);

  print('As chaves do mapa é: ${familia.keys}');
  print('Os valors são: ${familia.values}');
  print('O pai é: ${familia["Pai"]}');
  print('O filho é: ${familia["Filho"]}');
  print('A filha é: ${familia["Filha"]}');

}