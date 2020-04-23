import 'dart:io';

void main(List<String> args) {
  var dir = Directory.current;
  print('Diretorio atual: ${dir.path}');

  var lista = dir.listSync(recursive: true);

  print('Quantidade de arquivos: ${lista.length}\n');

  lista.forEach((FileSystemEntity valor){
    var stat = valor.statSync();
    print('Caminho: '+ valor.path);
    print('Tipo: ${stat.type}');
    print('Alterado em: ${stat.changed}');
    print('Modificado em: ${stat.modified}');
    print('Acessado em: ${stat.accessed}');
    print('Permissões: ${stat.mode}');
    print('Tamanho: ${(stat.size / 1024).toStringAsFixed(2)}KB\n');

  });
}