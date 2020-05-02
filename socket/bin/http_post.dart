import 'package:http/http.dart' as http;

void main(List<String> args) async {
  var url = 'http://httpbin.org/post';
  var response = await http.post(url, body: 'nome=Ismael&idade=18');
  print('${response.body}');
  print('O servidor está: ${ response.statusCode  == 200 ? 'Conectado' : 'Desconectado' }');
}