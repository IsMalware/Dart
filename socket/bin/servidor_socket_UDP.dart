import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  var data = '*** Informações enviadas viu UDP ***';

  var dataToSend = utf8.encode(data);
  var port = 3000;

  // Servidor
  RawDatagramSocket.bind(InternetAddress.loopbackIPv4, port).then((RawDatagramSocket udpSocket){
    udpSocket.listen((RawSocketEvent event){
      if(event == RawSocketEvent.read){
        print('Servidor aberto!\n');
        var dtg = udpSocket.receive();
        print(utf8.decode(dtg.data));
      }
    });
    // Cliente
    udpSocket.send(dataToSend, InternetAddress.loopbackIPv4, port);
  });

}