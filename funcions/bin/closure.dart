void main(List<String> args) {
  funcaoCouser();
}
void funcaoCouser(){
  var oi = (var nome){
    var dizerAlgo = (var algo) => print('Olá $nome, $algo!');
    dizerAlgo('estou muito feliz');
  };
  oi('Ismael');
}

