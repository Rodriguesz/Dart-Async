import 'dart:async';

Future<void> main() async {
  // buscarAlgo(2)
  //     .then((value) => print('Mensagem: $value'))
  //     .catchError((erro) => print('Erro: $erro'));

  try {
    final mensagem = await buscarAlgo(2);
  } catch (e, s) {
    print(e);
    print(s);
  }
}

Future<String> buscarAlgo(int numero) {
  final completer = Completer<String>();

  Timer(Duration(seconds: 2), () {
    if (numero == 0) {
      completer.complete('Numero enviado com sucesso');
    } else {
      completer.completeError('Numero enviado com erro', StackTrace.current);
    }
  });

  //cria um futuro que faz com q eu possa controlar quando eu quero completar com sucesso ou erro
  return completer.future;
}
