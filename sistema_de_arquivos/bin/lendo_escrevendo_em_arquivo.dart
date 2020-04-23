import 'dart:io';

void main(List<String> args) {
  var dir = Directory.current;
  print('Diretório atual: ${dir.path}');

  var file = File(dir.path + '/arquivo.txt');

  writeFile(file);

  readFile(file);
}

void readFile(File file) {
  if(!file.existsSync()){
    print('Arquivo não encontrado');
  }else{
    print('Lendo arquivo...');
    print(file.readAsStringSync());
    print('\n\nLendo o arquivo como ASCII das letras');
    print(file.readAsBytesSync());
  }
}

void writeFile(File file){
  print('Escrevendo no arquivo');
  var raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync('Olá mundo\nComo você está hoje?');
  raf.flushSync();
  raf.closeSync();
}