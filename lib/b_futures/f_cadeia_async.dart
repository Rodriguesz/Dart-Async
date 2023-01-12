import 'dart:async';

void main() {
  func1().then((value) => func2(value).then((value) => print(value)));

  func1().then((value) => func2(value)).then((value) => print('2: value'));
}

Future<String> func1() {
  return Future.delayed(Duration(seconds: 1), () => 'Parametro 1');
}

Future<String> func2(String parametro) {
  return Future.value('Parametro recebido e processado $parametro');
}
