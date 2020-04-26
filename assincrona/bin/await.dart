import 'dart:io';

void main(List<String> args) async {
  print('Começo');
  appendFile();
  // await é a mesma coisa que abrir um .then((valor){})
  print(await readFile());
  print('Acabou :D');
}

void appendFile(){
  var file = File(Directory.current.path + '/test.txt');
  var dt = DateTime.now();
  file.writeAsString(dt.toString() + '\r\n', mode: FileMode.append);
}

Future<String> readFile(){
  var file = File(Directory.current.path + '/test.txt');
  
  return file.readAsString();
}