class Televisao {
  void aumentarVolume(){}
  void diminuirVolume(){}
}

class SmartTV implements Televisao{
  bool netflix = true;

  @override
  void aumentarVolume() {
    print('Volume aumentado!');
  }

  @override
  void diminuirVolume() {
    print('Volume diminuido!');
  }
  void conexaoInternet(){
    print('Tem conexão');
  }
}