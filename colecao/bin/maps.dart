void main(List<String> args) {
  // Criando um Map();
  var dds = <int, String>{};
  dds[11] = 'São paulo';
  dds[98] = 'Maranhão';
  dds[99] = 'Maranhão';
  print(dds);

  // Map com strings e valores diverso
  var pessoa = <String, dynamic>{};
  pessoa['nome'] = 'Ismael';
  pessoa['idade'] = 18;
  pessoa['altura'] = 1.80;
  print(pessoa);
  
  // Chamando a função "puIfAbsent()" que vai inserir o dado somente se a chave
  // ainda não estiver presente
  var pessoas = <String, dynamic>{};
  pessoas.putIfAbsent('pai', ()=> 'Pedro');
  pessoas.putIfAbsent('mae', () => 'Lucelia');
  pessoas.putIfAbsent('mae', () => 'Carla'); // Tentando incrementar um valor diferente na mesma chave
  pessoas.putIfAbsent('Filho', () => 'Ismael');
  print(pessoas);
  // Como saber quais são as chaves:
  print(pessoas.keys);
  // Como saber quais são os valores das chaves:
  print(pessoas.values);
  // Como saber o valor de uma determinada chave:
  print(pessoas['pai']);

}