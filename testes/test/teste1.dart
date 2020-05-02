import 'package:test/test.dart';

void main() {
  group('Strings', (){
    // Teste #1
    test('String.split() divide a string no delimitador', (){
      var texto = 'Ismael,Maria,José';
      texto.split(',');

      expect(texto.split(','), equals(['Ismael', 'Maria', 'José']));
    });
    // Teste #2
    test('String.trim() remove os espaços no inicio e no fim da string', (){
      var texto = ' casa ';

      expect(texto.trim(), equals('casa'));
    });
  });
}
