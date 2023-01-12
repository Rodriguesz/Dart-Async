import 'dart:async';

Future<void> main() async {
  final usuario = UsuarioRepository();
  usuario.salvarComum((sucesso) {
    print('Sucesso $sucesso');
  }, (erro) {
    print('Erro $erro');
  });

  try {
    final sucesso = await usuario.salvarCompleter();
    print('Sucesso completer $sucesso');
  } catch (e) {
    print('Erro completer: $e');
  }
}

class UsuarioRepository {
  void salvarComum(void Function(String) callbackSuccess, void Function(String) callbackError) {
    Timer(Duration(seconds: 2), () {
      try {
        callbackSuccess('Usuario salvo com sucesso');
      } catch (e) {
        callbackError('Erro ao salvar usuario: $e');
      }
    });
  }

  Future<String> salvarCompleter() {
    final completer = Completer<String>();

    Timer(Duration(seconds: 2), () {
      try {
        completer.complete('Usuario salvo com sucesso');
      } catch (e) {
        completer.completeError('Erro ao salvar usuario: $e');
      }
    });

    return completer.future;
  }
}
