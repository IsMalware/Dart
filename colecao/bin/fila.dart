import 'dart:collection';

void main(List<String> args) {
  // Fila: Coleção ordenada, sem index, que adiciona e remove itens no inicio e no fim
  // por padrão ele adiciona no fim da fila.
  var itens = Queue();
  itens.addFirst(1);
  itens.addLast('value');
  itens.add(13);
  itens.addFirst(23);
  print(itens);
  itens.removeFirst();
  itens.remove(13);
  print(itens);
}