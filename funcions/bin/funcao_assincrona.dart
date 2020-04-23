void main(List<String> args) async {
  print('começou');
  load();
  load2();
  print('terminou');

  var time = await load3();
  print(time);
}
void load() async {
  await Future.delayed(const Duration(seconds: 2));
  print('Carregou 1');
}
void load2() async {
  await Future.delayed(const Duration(seconds: 1));
  print('Carregou 2');
}
dynamic load3() async {
  await Future.delayed(const Duration(seconds: 3));
  return 'Carregou 3';
}