import 'dart:io';
import 'dart:convert';

void main(List<String> args) {
  Process.start('cat', []).then((Process process){
    // Transforma a saida em texto para humanos
    process.stdout.transform(utf8.decoder).listen((dado){
      print(dado);
    });

    process.stdin.writeln('Hello world');
    print(process.pid);
    Process.killPid(process.pid);
  });
}