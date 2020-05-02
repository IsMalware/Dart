import 'package:sqljocky5/sqljocky.dart';
import 'package:banco_de_dados/conf_db.dart' as db;

Future<void> main(List<String> args) async {
  var conn = await db.criarConexao();
  await criarTabela(conn);
  await inserirDados(conn);
  await atualizarDados(conn);
  await listarDados(conn);
  await removerDados(conn);
  await removerTabela(conn);
  await conn.close();
}

Future<void> criarTabela(MySqlConnection conn) async {
  print('Criando tabela!!');
  await conn.execute(
    'CREATE TABLE IF NOT EXISTS pessoa(id INTEGER NOT NULL AUTO_INCREMENT, nome VARCHAR(255), idade INTEGER(11), email VARCHAR(255), PRIMARY KEY (id))'
    );
  print('Tabela criada com sucesso!!\n\n');
}

Future<void> inserirDados(MySqlConnection conn) async {
  print('Inserindo dados...');
  var data = [
    ['Jorge', 18, 'Jorge@Jorge.com'],
    ['Bob', 21, 'Bob@Bob.com'],
    ['Mael', 81, 'Mael@Mael.com']
  ];
  for (var data in data) {
    await conn.prepared('INSERT INTO pessoa (nome, idade, email) values (?, ?, ?)', data);
  }
  // Esse método abaixo não está funcionando!!
  // await conn.preparedWithAll('INSERT INTO pessoa (nome, idade, email) values (?, ?, ?)', dados);
  print('Dados inseridos!!');
}

Future<void> listarDados(MySqlConnection conn) async{
  print('Listando os dados...\n\n');
  var resultados = await conn.execute('SELECT * FROM pessoa');
  await resultados.forEach((var row) => 
    print('ID: ${row[0]}, Nome: ${row[1]}, Idade: ${row[2]}, Email: ${row[3]}'));
  
}

Future<void> atualizarDados(MySqlConnection conn) async {
  print('Atualizando dados!!');
  await conn.prepared('UPDATE pessoa SET email = ?, nome = ? WHERE id = ?', ['Ismael@Ismael.com', 'Ismael', 1]);
}

Future<void> removerDados(MySqlConnection conn) async {
  print('Removendo dados...');
  await conn.execute('DELETE FROM pessoa');
}

Future<void> removerTabela(MySqlConnection conn) async {
  print('Removendo Tabela...');
  await conn.execute('DROP TABLE pessoa');
  print('Tabela removida!');
}