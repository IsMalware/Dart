import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  var zlibComp = comprimir(zlib);
  var gzipComp = comprimir(gzip);

  print('Zlib: ${zlibComp}');
  print('Gzip: ${gzipComp}');

}

String gerarDado(){
  var dado = '';

  for (var i = 0; i < 1000; i++) {
    dado = dado + 'Olá mundo\r\n';
  }
  return dado;
}

int comprimir(var codec){
  var data = gerarDado();

  var original = utf8.encode(data);
  var comprimido = codec.encode(original);
  var descomprimido = codec.decode(comprimido);

  print('testando: ${codec.toString()}');
  print('Original: ${original.length} bytes');
  print('Comprimido: ${comprimido.length} bytes');
  print('Descomprimido: ${descomprimido.length} bytes');
  print('');

  var decoded = utf8.decode(descomprimido);
  assert(decoded == data);

  return comprimido.length;
}