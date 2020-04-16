import 'dart:collection';

void main(List<String> args) {
  
  // Fila: coleção ordenada, sem index, adiciona e remove itens do início e fim
  Queue items = Queue();
  items.add(1);
  items.add(2);
  items.add(3);

  items.addFirst(0);
  items.addLast(4);
  items.removeFirst();
  items.removeLast();

  print(items);

}