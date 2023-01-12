import 'dart:async';

void main() {
  print('Iniciando Main');
  func1(1);
  func1(2);
  func1(3);
  func2();
  print('Finalizando Main');
}

// O FIFO (first in, first out) só serve para processos finalizados
// por isso a evento da func2 printa primeiro mesmo q o evento da func1
// tenha sido registrado primeiro

void func1(int i) {
  print('Iniciando func1');
  Future.delayed(Duration(seconds: 2), () => print('Fazendo algo complexo $i'));
  print('Finalizando func1');
}

void func2() {
  print('Iniciando func2');
  Future.delayed(
      Duration(seconds: 1), () => print('Fazendo algo complexo func2'));
  print('Finalizando func2');
}
