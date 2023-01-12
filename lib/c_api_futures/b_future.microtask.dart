import 'dart:async';

void main() {
  print('Init main');

  Future<String>(() => 'Future normal').then(print);
  Future<String>.microtask(
          () => 'Future microtask') // => Future.error('Erro ao executar')
      .then(print) //cria uma microtask na fila de eventos
      .catchError(
          print); //Possibilita tbm tratar erros diferente do scheduleMicrotask
  print('Fim main');
}
