import 'dart:async';

num contador = 0;

void main(List<String> args) {
  var duration = Duration(seconds: 2);
  Timer.periodic(duration, timeOut);

  print('Iniciado em: ${getTime()}');
}

void timeOut(Timer timer){
  print('Espera: ${getTime()}');
  contador++;
  if(contador >= 5){
    timer.cancel();
  }
}

String getTime(){
  var dit = DateTime.now();
  return dit.toString();
}