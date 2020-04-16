void main(List<String> args) {

 List<int> inteiros = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
 // Verifica se a lista possui o valor passado em "result > 0".
 bool resultado = inteiros.every((result) => result > 0);
 print(resultado);

 List<String> palavras = ['Ismael', 'Maria', 'Gabriel', 'Paulo'];
 // Verifica se a lista possui o valor passado em "result.contains('a')".
 bool palavra_result = palavras.every((result) => result.contains('a'));
 print(palavra_result); 
}
