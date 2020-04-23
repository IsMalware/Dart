import 'dart:io';

import 'package:projeto1/ver_cotacao.dart';

import 'gravar_dados.dart';

dynamic menu(){
  print('############################### INICIO ###############################');
  print('Selecione uma opção:');
  print('\n1 - Ver cotação de hoje');
  print('2 - Gravar cotação de hoje em um arquivo');

  var opcao = stdin.readLineSync();
  switch (int.parse(opcao)) {
    case 1:
      verCotacao();
      break;
    case 2:
      print('\n\nDigite o nome do arquivo:');
      var nome = stdin.readLineSync();
      gravarCotacao(nome);
      break;
    default:
      print('\n\n${opcao} não é uma opção válida!');
  }
}