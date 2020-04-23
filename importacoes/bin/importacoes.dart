import 'dart:convert';

void main(List<String> args){
  var myValue = 'Hello world';
  List ebytes = utf8.encode(myValue);
  var encode = base64.encode(ebytes);

  print('Codificado em 64: $encode');

  List dbytes = base64.decode(encode);
  var decoded = utf8.decode(dbytes);
  
  print('Decodificado de 64: $decoded');

}