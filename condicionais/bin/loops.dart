void main(List<String> args) {
  
  for (var i = 0; i < 10; i++){
    print('ir até: ${i}');
  }

  print('---------------------------------');
  
  List letras = ['A', 'B', 'C'];
  
  for (var i = 0; i < letras.length; i++) {
    print('Leta ${letras[i]}');
  }
  
  for (var l in letras) {
    print('A letra é: ${l}');
  }

  letras.forEach((person) => print('For each: $person'));
  
  print('---------------------------------');

  num j = 0;
  while ( j < 10 ) {
    print('while: $j');
    j++;
  }

  print('---------------------------------');

  num k = 9;

  do {
    print('Do while: $k');
    k++;
  } while ( k > 10 );
}