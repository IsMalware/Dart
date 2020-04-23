void main() {
  dadosPessoa(altura: 1.80, peso: 95.0, nome: 'Ismael Aquino', idade: 18, pele: 'Branca');
}

// Parâmetro nomeado é definido por {} e não importa a ordem q sera definida na chamada da função
void dadosPessoa({String pele, double peso, int idade, String nome, double altura}){
  print('$nome tem $idade anos, pesa $peso, tem uma altura de $altura, e tem a cor de pele $pele');
}