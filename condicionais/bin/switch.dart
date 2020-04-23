void main(List<String> args) {
  num idade = 65;

  switch (idade) {
    case 18:
      print('Você pode tirar carteira de habilitação, Bro!');
    break;
    case 21:
      print('Você tem 21 anos, é um adulto');
    break;
    case 65:
      print('Você tem 65 anos, pode se aposentar!');
    break;
    default:
      print('Nada de especial na sua idade ;-;');
    break;

  }
}