import 'dart:io';

void main(List<String> args) async {
  // Criando diretório
  var dir = Directory.systemTemp.createTempSync();
  print(dir.path);

  if(dir.existsSync()) {
    // Removendo o diretório
    await Future.delayed(Duration(seconds: 1));
    print('Removendo diretório ${dir.path}');
    await Future.delayed(Duration(seconds: 3));
    dir.deleteSync();
  }else{
    print('Não foi possível encontrar o diretório: ${dir.path}');
  }
}