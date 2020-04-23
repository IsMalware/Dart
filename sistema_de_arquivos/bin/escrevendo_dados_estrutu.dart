import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  var dados = <String, String>{};
  dados.putIfAbsent('1', () => 'João');
  dados.putIfAbsent('2', () => 'Maria');
  dados.putIfAbsent('3', () => 'Pedro');
  dados.putIfAbsent('4', () => 'Roberto');
  dados.putIfAbsent('5', () => 'Julia');

  var dir = Directory.current;
  var file = File(dir.path + '/arquivo_formatado.txt');

  if(!file.existsSync()){
    print('Arquivo não encontrado, criando e salvando dados...');
    writeFile(file, jsonEncode(dados).toString());
  }else{
    print('Arquivo encontrado, Lendo arquivo:');
    readFile(file);
  }
  deleteFile(file);

}

void writeFile(File file, String dados){
  var raf = file.openSync(mode: FileMode.write);
  raf.writeStringSync(dados);
  raf.flushSync();
  raf.closeSync();
}

void readFile(File file){
  print(jsonDecode(file.readAsStringSync()));
}

void deleteFile(File file){
  if(!file.existsSync()){
    print('Arquivo não existe!!');
  }else{
    file.deleteSync();
  }
}