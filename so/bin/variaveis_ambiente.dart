import 'dart:io';

void main(List<String> args) {
  // Pega o tipo de sistema e sua versão
  print('SO: ${Platform.operatingSystem}, Versão de Sistema: ${Platform.version}');

  // Verifica se o sistema rodado é algum dos 3 e returna um valor bool
  if(Platform.isLinux){
    print('############################################################################################');
    print('Rodando codigo em ${Platform.operatingSystem}');
  }else if(Platform.isWindows){
    print('############################################################################################');
    print('Rodando codigo em ${Platform.operatingSystem}');
  }
  else if(Platform.isMacOS){
    print('############################################################################################');
    print('Rodando codigo em ${Platform.operatingSystem}');
  }else{
    print('############################################################################################');
    print('Rodando codigo em ${Platform.operatingSystem}');
  }
  // Verifica o caminho de execulção do script
  print('Path: ${Platform.script.path}');
  // Verifica o caminho de execulção do core do Dart
  print('Dart: ${Platform.executable}');

  print('############################################################################################');
  print('Variáveis de ambiente:');
  // Varre todas as variaveis de ambiente presente no sistema
  Platform.environment.keys.forEach((key){
    print('${key}: ${Platform.environment[key]}');
  });
}