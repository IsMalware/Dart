import 'pegar_dados.dart';

Future verCotacao() async {
  var dados = await pegarDados();
  print(
    '''
      Dia: ${dados['data']}
      Moeda: ${dados['moeda']}
      ${dados['dados']}
    '''
  );
}