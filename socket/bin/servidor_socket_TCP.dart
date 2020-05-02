import 'dart:io';
import 'dart:convert';

void main(List<String> args) async {
  
  // Cria uma conexão com um IP e uma porta
  var serverSocket = await ServerSocket.bind('192.168.0.10', 3000);
  print('Estultando mensagens na porta 3000');

  // Cria um loop, para varrer tudo que acontece nessa porta
  await for (var socket in serverSocket) {
    socket.listen((valor){
      // print('${socket.remoteAddress} na porta: ${socket.remotePort} que diz:');
      print(utf8.decode(valor));
    });
  }
}