import 'package:http/http.dart' as http;

void main(List<String> args){
  var url = 'https://google.com.br';

  http.get(url).then(( response ){
    print('Código de status da requisição: ${response.statusCode}\n');
    print('BODY:\n ${response.body}');
  });
}