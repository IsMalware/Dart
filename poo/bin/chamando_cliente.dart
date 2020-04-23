import 'package:poo/cliente.dart';

void main(List<String> args) {

  var cliente1 = Cliente('Pedro', 12345, 'm', '123124');
  cliente1.ativarCliente();

  var cliente2 = Cliente('Ismael', 12323312312, 'M', '991155982');
  cliente2.ativarCliente();
  
  // Construtor personalizado
  var cliente3 = Cliente.reception('Gabriela', '25455781', 'F');

  print('Cliente 1: ${cliente1.nome}, ${cliente1.telefone}');
  print('Cliente 2: ${cliente2.nome}, ${cliente2.telefone}');
  cliente2.disabilitarCliente();
  print('Potencial cliente: ${cliente3.nome}, ${cliente3.telefone}');
  cliente2.ativarCliente();

}