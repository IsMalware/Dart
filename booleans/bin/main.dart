void main(List<String> arguments) {
  
  /*
  true = verdadeiro
  false = falso
  */

  bool rich = true;
  print('Eu vou ficar rico com Dart? ${rich ? 'Sim' : 'Com certeza'}');

  // rich = false;
  // print('Eu vou ficar rico se largar o Dart? ${rich}');

  print('Você é: ${ rich ? 'Rico' : 'Pobre' }');
  print(rich.runtimeType);

}
