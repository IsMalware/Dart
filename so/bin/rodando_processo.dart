import 'dart:io';

void main(List<String> args) {
  // metodo run recebe como parâmetro o comando que deseja execulta e logo após as opções desse comando
  Process.run('nmap', ['-sn','-n', '192.168.0.0/24']).then((ProcessResult result){
    // Formatando a saida
    print(result.stdout);
    // exibindo o código de saída, se for igual a 0 foi uma saída bem sucedida
    print('Codigo de saída: ${result.exitCode}');
  });
}