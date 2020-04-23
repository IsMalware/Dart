import 'dart:convert';
import 'package:http/http.dart' as http;
import 'pegar_data.dart';

Future pegarDados() async {
  var url = 'https://api.hgbrasil.com/finance?key=8ef10f7e';
  var response = await http.get(url);

  if(response.statusCode == 200){
    var dados = jsonDecode(response.body)['results']['currencies'];
    var moeda = dados['source'];
    var usd = dados['USD'];
    var ars = dados['ARS'];
    var eur = dados['EUR'];
    var gbp = dados['GBP'];
    var btc = dados['BTC'];
    
    var formatados = <String, dynamic>{};
    formatados['data'] = pegarDataHoje();
    formatados['moeda'] = moeda;
    formatados['dados'] = '${usd['name']}: ${usd['buy']} | ${ars['name']}: ${ars['buy']} | ${eur['name']}: ${eur['buy']} | ${gbp['name']}: ${gbp['buy']} | ${btc['name']}: ${btc['buy']} |';
    
    return formatados;
  }else{
    return null;
  }
}