import 'dart:io';

// BLOQUEANDO AS REQUISIÇÕES
// forma errada de se fazer (apenas para fins didáticos)
// usuario fica com a tela congelada
void main() {
  print('Iniciando o main');
  print(temperaturaAtual());
  print(previsaoAmanha());
  print('Finalizando o main');
}

String temperaturaAtual() {
  sleep(const Duration(seconds: 3));
  return 'Está fazendo 30 graus';
}

String previsaoAmanha() {
  sleep(const Duration(seconds: 4));
  return 'Amanhã fará 34 graus';
}
