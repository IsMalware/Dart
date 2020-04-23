class Pessoa {
  static final Pessoa instancia = Pessoa._construtorNomeado();
  String nome;

  Pessoa._construtorNomeado();
}

// Factory singleton

class AnimalFactory{
  static final AnimalFactory instancia = AnimalFactory.construtorNomeado('Vazio');
  String nome;

  factory AnimalFactory() => instancia;

  AnimalFactory.construtorNomeado(this.nome) {
    // Configurações iniciais ou atributos...
  }
}