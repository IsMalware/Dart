import 'dart:async';

void main(List<String> args) {
  var lista = <dynamic>[];
  var controlador = StreamController<dynamic>();

  var strem = controlador.stream;

  strem.listen((onData){
    print('Evento iniciado: ${onData}');
    lista.add(onData);
  }, onDone: (){
    print('Stream finalizada');
    print(lista);
  });
  controlador.sink.add('Ismael');
  controlador.sink.add(18);
  controlador.sink.add('Dart!!');
  controlador.close();
  print('Canal Aberto!!');
}