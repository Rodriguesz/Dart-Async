void main() {
  print('init main');
  Future<String>.sync(() {
    //.sync faz com q a linha 4 e 5 sejam executadas nas mesma interação do event loop
    print('Função future executada');
    return 'Resultado Future';
  }).then(print); //printa o return

  print('Fim main');
  Future.sync(() => null);
}
