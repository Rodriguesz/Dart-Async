Future<void> main() async {
  print('inicio');
  try {
    final id = await buscarId();
    final nome = await buscarNome(id);

    print('O nome é $nome');
    print('fim');
  } catch (e) {
    print('Aconteceu um erro!!!');
  }

  // final nomeAlternativo = 'Leonardo Rodrigues';
  // final nome = await buscarNome(id).catchError((erro) {
  //   print('Aconteceu um problema. printando outro nome.');
  //   return nomeAlternativo;
  // });
}

Future<int> buscarId() async => 80;

Future<String> buscarNome(int id) async {
  throw Exception(); //Future.error
  //return 'Rodrigo Rahman';
}
