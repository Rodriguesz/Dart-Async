Future<int> buscarId() async => 80;

Future<String> buscarNome(int id) async => 'Rodrigo Rahman ($id)';

// Sem utilizar asyn await
Future<String> buscarNomeUsuario() {
  return buscarId().then((valorId) {
    return buscarNome(valorId).then((nome) {
      return 'Usuário: $nome';
    });
  });
}

// Utilizando async await

Future<String> buscarNomeUsuarioAwait() async {
  final id = await buscarId();
  final nome = await buscarNome(id);
  return 'usuário: $nome';
}

void main() {
  print('Inicio');
  // buscarNomeUsuario().then(print);
  buscarNomeUsuarioAwait().then(print);
  print('Fim');
}
