void main(List<String> args) {
  try {
    num age;
    num nume = 7;

    if (nume != 7) {
      throw Exception('O valor tem que ser igual a 7!');
    }else if(age == null){
      throw NullThrownError();
    }

    print(age * nume);

  } 
  on NullThrownError{
    print('O valor é nulo!!');
  }
  catch (e) {
    print('Desculpe, houve um erro em: \n ${e.toString()}');
  }
  finally{
    print('Código execultado!');
  }
}