import 'dart:io';

void main(List<String> args) {
  var path = Directory.current.path +'/test.txt';
  var file = File(path);

  var fraf = file.open(mode: FileMode.append);

  // Then é um método que está presente em todo Future, ele chama uma função anônima (){} e
  // efetua a compilação quando a taréfa foi execultada
  fraf.then((RandomAccessFile raf){
    print('Arquivo foi aberto!');
    raf.writeString('Olá mundo!!')
    .then((value){
      print('Arquivo escrito com sucesso!!');
    })
    .catchError(() => print('Ocorreu um erro ao tentar escrever o arquivo!')).whenComplete(() => raf.close());
  });
  print('################################ FIM ################################');
}