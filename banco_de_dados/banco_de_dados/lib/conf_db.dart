import 'package:sqljocky5/sqljocky.dart';

Future<MySqlConnection> criarConexao() async {
  var s = ConnectionSettings(
    host: 'localhost',
    password: null,
    db: 'dart',
    port: 3306,
    user: 'root'
  );
  return await MySqlConnection.connect(s);
}