import 'dart:convert';
import 'dart:io';

import 'pegar_dados.dart';
import 'pegar_data.dart';


void gravarCotacao(String nome) async {
  var dados = await pegarDados();
  var nomeDoArquivo = nome;
  dynamic fileData = readFile(nomeDoArquivo);

  fileData = (fileData != null && fileData.length > 0 ? jsonDecode(fileData) : []);

  var existe = false;

  fileData.forEach((data) {

    if(data['data'] == pegarDataHoje()){
      existe = true;
    }
  });

  if(!existe){
    print('Criando arquivo...');

    fileData.add({'data': "${dados['data']}", 'dados': "${dados['dados']}"});
    
    var dir = Directory.current;
    var file = File(dir.path + '/${nomeDoArquivo}.json');
    var raf = file.openSync(mode: FileMode.write);
    
    raf.writeStringSync(jsonEncode(fileData).toString());
    raf.flushSync();
    raf.closeSync();
    
    print('Aquivo Criado');
  }
  else{
    print('Arquivo já existe, desculpe, escolha outro nome!');
  }
}
String readFile(String nomeDoArquivo) {
  var dir = Directory.current;
  var file = File(dir.path + '/${nomeDoArquivo}.json');
  

  if(!file.existsSync()){
    print('Arquivo não encontrado!');
    return null;
  }
  return file.readAsStringSync();
}