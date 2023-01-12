void main() {
  final nome = metodoAssincronoSemAsync();

  nome.then(print).catchError(print);
}

Future<String> metodoAssincronoSemAsync() {
  return Future.value('Resultado sem async');
}

// Não precisa colocar Future.value quando utiliza async
Future<String> metodoAssincrono() async {
  return 'String futuro';
}
