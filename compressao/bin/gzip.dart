import 'dart:io';
import 'dart:convert';

void main(List<String> arguments) {
  var data = '';
  for (var i = 0; i < 100; i++) {
   data += '${i} Olá Mundo!!\r\n'; 
  }

  // Dados originais
  var original = utf8.encode(data);

  // Dados comprimidos
  var dadosComp = gzip.encode(original);

  var dadosDesComp = gzip.decode(dadosComp);

  var dcoded = utf8.decode(dadosDesComp);
  print(dcoded);
}
