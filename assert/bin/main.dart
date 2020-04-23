void main(List<String> arguments) async {
  try {
    String text = '';
    assert(text != null);
    num numero = 50;
    assert(numero <100);

    String protocolo = 'http';
    assert(protocolo.contains('https'), 'O protocolo tem que ser HTTP');
  } catch (e) {
    print(e);
  }
}
