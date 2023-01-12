void main() {
  // print('Levando o carro para o mecanico');

  // Future<int>(() {
  //   // função assincrona que vai fazer o orçamento da manutenção do nosso carro!
  //   return 5;
  // }).then((valorOrcamento) {
  //   print('O orçamento para arrumar o carro é de $valorOrcamento');
  // });

  // print('Fui viajar');
  // Future<String>(() {
  //   // indo para os Estados Unidos
  //   // throw Exception('Avião Caiu');
  //   return 'Macbook comprado';
  // }).then((comprado) {
  //   print('Comprei meu macbook');
  // }).catchError((erro) {
  //   print('Deu ruim! O avião caiu');
  // }).whenComplete((() => print('Finalizando')));

  // print('Saindo da mecanica');

  Future<int>(() {
    // ~/ trunca e transforma o resultado em um inteiro caso ele seja double
    return 10 ~/ 0;
  }).then((value) => print('Valor calculado é $value'), onError: (erro) {
    print('Ocorreu um erro $erro');
    throw Exception('Erro no onErro que joga para o catchError');
  }).catchError((error) {
    print('Ocorreu um erro no CatchError $error');
  });

  Future<int>(() {
    return 10 ~/ 2;
  }).then((value) => print('Valor calculado é $value')).catchError((error) {
    print('Ocorreu um erro no CatchError $error');
  });
}
