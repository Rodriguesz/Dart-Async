void main() {
  final totalAlunos = buscarTotalAlunos();
  totalAlunos.then((totalAlunosValue) {
    print('O total de alunos da ADF é $totalAlunosValue');
  });
  print('Resposta: $totalAlunos');
}

Future<int> buscarTotalAlunos() async {
  print('Esse ponto do método é sincrono');
  //O await fala pro dart que ele tem que esperar aquele ponto do código ser resolvido antes dele dar continuidade na função
  final buscandoTotalAlunos = await Future.value(887);
  print('Esse pinto do méotodo é depois do await');
  return buscandoTotalAlunos;
}
