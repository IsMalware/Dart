import 'package:poo/classe_pub_pri.dart';

void main(List<String> args) {
  var ani = Animal('Tommy', 5, 'ondulado');
  print(ani.sayHello());
  
  /*
  Isso calsa erro, porque o "static name" só pode ser acessado pela própria
  classe.
  print(ani.name);
  */
  
}