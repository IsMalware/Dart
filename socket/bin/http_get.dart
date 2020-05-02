import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var url = 'http://dartlang.org';
  var response = await http.get(url);
  print('O corpo da requisição é:\n\n ${response.body}');
  print('O servidor está: ${ response.statusCode  == 200 ? 'Conectado' : 'Desconectado' }');
}