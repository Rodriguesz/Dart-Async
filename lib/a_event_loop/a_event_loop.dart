import 'dart:async';

void main() {
  //? Fila de eventos
  // Timer(Duration.zero, ()=> print(''));
  /// mesma coisa q
  // Timer.run(() {});

  //? Microtasks
  // scheduleMicrotask(() => print(''));

  print('Inicio main');

  // FIFO: fará com que o event 1 execute primeiro
  Timer.run(() {
    scheduleMicrotask(() => print('Nova MicroTask'));
    print('Event 1');
  });
  Timer.run(() => print('Event 2'));
  Timer.run(() => print('Event 3'));

  // FIFO: fará com que o MicroTask2 execute primeiro
  scheduleMicrotask((() => print('MicroTask 2')));
  scheduleMicrotask((() => print('MicroTask 1')));

  print('Fim main');
}
