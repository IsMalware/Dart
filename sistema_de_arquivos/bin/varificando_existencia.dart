import 'dart:io';

void main(List<String> args) {
  var caminho = '/home/ismalware';
  var dir = Directory(caminho);

  if(dir.existsSync()){
    print('O Diretório existe');
  }else{
    print('O diretorio não existe');
  }
}