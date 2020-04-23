import 'dart:io';

void main(List<String> args) {
  displayResult(askUser());
}

int askUser(){
  print('Informe um número: ');
  return int.parse(stdin.readLineSync(), onError: (String err) {
    print('Tem certeza que $err é um número??');
  });
}

void displayResult(int max){
  num half = max / 2;
  for (var i = 0; i < max; i++) {
    print(i);
    
    if(i == half.round()){
      print('Opa, estamos no meio do caminho!');
    }
  }
}