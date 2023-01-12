import 'dart:async';

Future<void> main() async {
  final aguardando = inserindoAlgoBemLento();
  print(DateTime.now().toIso8601String());
  //? timeout apenas informa que o futuro não foi finalizado no tempo que vc registrou
  //? mas não cancela o evento
  // aguardando.timeout(Duration(seconds: 1), onTimeout: () {
  //   print('Terminou com Timeout');
  // }).catchError((erro) {
  //   print('Terminou com erro: $erro');
  // });

  //? utilizando o async / await
  try {
    final aguardando = await inserindoAlgoBemLento();
  } on TimeoutException catch (e) {
    print('Finalizou com timeout $e');
  }
}

Future<void> inserindoAlgoBemLento() {
  return Future.delayed(Duration(seconds: 3), () {
    print('Terminou o insert');
    print(DateTime.now().toIso8601String());
  });
}
