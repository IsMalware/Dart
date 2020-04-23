class Cliente {
  
  int cpf;
  String nome;
  String telefone;
  String genero;
  bool ativo = false;

// Construtor padrão
  // Client(String nome, int cpf, String telefone){

  //   this.nome = nome;
  //   this.cpf = cpf;
  //   this.telefone = telefone;

  // }

  // Construtor DART
  Cliente(this.nome, this.cpf, this.genero, this.telefone);

  Cliente.reception(this.nome, this.telefone, this.genero){
    print('$nome, foi registrado com sucesso como   um potencial cliente!');
  }

  void disabilitarCliente(){
    ativo = false;
    print('O cliente ${nome} foi desativado com sucesso!');
  }

  void ativarCliente(){
    ativo = true;
    print('O cliente $nome foi ativo');
  }

}