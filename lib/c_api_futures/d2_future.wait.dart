void main() {
  print('initi main');

  var f1 = Future.delayed(Duration(seconds: 1), () => 'f1');
  var f2 = Future.delayed(Duration(seconds: 1), () => 'f2');
  var f3 = Future.delayed(Duration(seconds: 4), () => 'f3');
  var f4 = Future.delayed(Duration(seconds: 1), () => 'f4');
  var f5 = Future.delayed(
      Duration(seconds: 1), () => Future.error('Erro na execução'));

  Future.wait([f1, f2, f3, f4, f5], eagerError: true, cleanUp: ((successValue) {
    print('Completou $successValue');
  })).then((arrayValues) {
    print(
        arrayValues); // só executará essa função quando f1, f2, f3 e f4 estiverem prontos.
  }).catchError((error) {
    print(error);
  });
  print('fim main');
}
