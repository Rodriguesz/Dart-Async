void main() {
  // Status do Future
  // Future -> Incomple, Completo com sucesso, Compleco com Erro

  Future(() {
    // Funcao assincrona;
  })
      //? Funções de callback
      .then((value) {
    // registrando função que será executada quando o futuro for completado com sucesso!
  }).catchError((error) {
    // registrando função que será executada quando o futuro for completado com erro!
  }).whenComplete(() {
    // registrando função que será executada SEMPRE (independente de erro ou sucesso).
  });
}
