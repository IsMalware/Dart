import 'package:sqljocky5/sqljocky.dart';
import 'package:banco_de_dados/conf_db.dart' as db;

Future<void> main(List<String> args) async{
  
  var conn = await db.criarConexao();
  await criarTabela(conn);

  var trans = await conn.begin();

  try {
    
    await trans.execute('INSERT INTO pessoa (id, nome, idade, email) VALUES (1, "Ismael", 18, "Ismael@ismael.com")');
    await trans.execute('INSERT INTO cavalo (pessoa_id) VALUES (1)');
    await trans.commit();

  } catch (e) {
    print(e);
    await trans.rollback();
  }

  print('Execultado com sucesso, fechando conexão!!');
  await conn.close();

}

Future<void> criarTabela(MySqlConnection conn) async {
  await conn.execute('CREATE TABLE IF NOT EXISTS pessoa (id INT(11) NOT NULL AUTO_INCREMENT, nome VARCHAR(255), idade INT(11), email VARCHAR(255), PRIMARY KEY(id))');
  await conn.execute('CREATE TABLE IF NOT EXISTS cavalo (id INT(11) NOT NULL AUTO_INCREMENT, pessoa_id INT(11) NOT NULL, PRIMARY KEY(id), FOREIGN KEY (pessoa_id) REFERENCES pessoa(id))');
}