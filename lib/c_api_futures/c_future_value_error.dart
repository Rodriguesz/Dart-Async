void main() {
  // ja etende a q função vai se de futuro, então ele encapsula do future.value() e não precisa colocar
  Future(() {}); // -> Incompleto vai ser executadop ainda!!

  // Formas de criar o futuro ja completo
  Future.value(''); // -> Sucesso
  Future.error(''); // -> Erro
}

Future<String> func1() {
  return Future.value('Qaulquer valor de sucesso');
}
