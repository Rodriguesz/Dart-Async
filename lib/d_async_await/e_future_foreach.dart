Future<void> main() async {
  final nomes = ['Rodrigo', 'Luana', 'Guilherme', 'Valentina'];

  //? modo incorreto
  // nomes.forEach(tratarSaudacao);

  //? modo correto porem não assincrono
  // for (var nome in nomes) {
  //   await tratarSaudacao(nome);
  // }

  //? modo que faz o loop corretamente de forma assincrona utilizando a api de futuros
  // await Future.forEach<String>(nomes, (nome) async {
  //   await tratarSaudacao(nome);
  // });

  //? modo utilizando o Future.wait
  //? Todos os futuros são resolvidos e só depois são processados
  final nomesFuture = nomes.map((nome) => saudacao(nome)).toList();
  final nomesProcessados = await Future.wait(nomesFuture);

  print(nomesProcessados);
  print('fim');
}

Future<void> tratarSaudacao(String nome) async {
  final saudacaoNome = await saudacao(nome);
  print(saudacaoNome);
}

Future<String> saudacao(String nome) async {
  print('Inicio saudacao $nome');
  return Future.delayed(Duration(seconds: 1), () {
    print('Fim saudação nome: $nome');
    return 'Olá $nome';
  });
}
