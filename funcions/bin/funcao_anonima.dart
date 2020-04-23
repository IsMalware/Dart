void main( List<String> args ) {
  createButton( 'Botão da câmera', createdButton );

// Função anônima é definida por "(){}"
  createButton('Botão da Galeria', (){
    print('O Seu buttão foi criado com uma função anônima\n');
  }, color: 'Azul', wight: 50);
// Funções anônimas também podem ser fazias
  createButton('Botão fechar', (){}, color: 'Branco', wight: 30);
}

void createButton( String nome, Function funcaoCriada, {String color, double wight} ){
  print( nome );
  print( color ?? 'Preto' );
  print( wight ?? 10.0 );

  funcaoCriada();
}

void createdButton() => print( 'Botão criado!!!\n' );