import 'dart:io';
import 'dart:convert';

import 'servidor_socket_TCP.dart';

void main(List<String> args) async {
  
  var loop = true;

  var socket = await Socket.connect(InternetAddress.loopbackIPv4, 3000);

  while (loop) {
    print('Conectado! O que quer falar: ');
    var text = stdin.readLineSync();
    socket.write(text);
  }

  await socket.close();
  exit(0);

}