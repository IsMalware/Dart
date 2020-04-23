void main(List<String> args) {
  var centimetrosParaMetros = converter;
  var metrosParaQuilometros = converter;

  print('Metros para Quilômetros é: ${ metrosParaQuilometros(5000, 1000 ) }Km');
  print('Centímetros para metros é: ${ centimetrosParaMetros(200, 100) }m');
  print('Centímetros para Quilômetros é: ${ converter(200000, 100000) }Km');

}

double converter(double tamanho, double escala){
  return tamanho / escala;
}