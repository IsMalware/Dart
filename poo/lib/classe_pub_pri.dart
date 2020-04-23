class Animal {
  String _nome;
  int _idade;
  String pelo;  
  
  // Um atributo "static" só pode ser utilizade pela própria classe.
  static String name;

  Animal(this._nome, this._idade, this.pelo);

  
  set nome(String nome) => _nome = nome;
  String get nome => _nome;
  set idade(int idade) => _idade = idade;
  int get idade => _idade;

  // Um atributo "static" não possui "get" nem "set".
  // String get name => name = name;
  
  dynamic sayHello() => print('Olá, meu nome é: ${nome} e tenho ${idade} anos, e meu pelo é: $pelo');
}