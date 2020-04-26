void gerador(){
  Iterable<int> geradorSync(int repeticao) sync* {
    num valor = 0;
    while (valor < repeticao) {
      yield ++valor;
    }
  }
  print(geradorSync(10));

  Stream<int> geradorAsync(int repeticao) async* {
    num valor = 0;
    while (valor < repeticao) {
      yield ++valor;
    }
  }
  geradorAsync(10).forEach((v) => print(v));
}

void main() {
  gerador();
}