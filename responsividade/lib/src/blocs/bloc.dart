import 'validators.dart';
import 'dart:async';
import '../models/contato_model.dart';

class Bloc with Validators {
//streams de validação
  final _numeroController = StreamController<String>();
  Stream<String> get numero =>
      _numeroController.stream.transform(validarNumero);
  Function(String) get mudarNumero => _numeroController.sink.add;
//stream que lida com uma lista de contatos
  final _numerosController = StreamController<List<Numero>>();
  Stream<List<Numero>> get numeros => _numerosController.stream;
//a lista de contatos
  List<Numero> _numero = [];
//adicionamos na lista e o sink a absorve a seguir
  void adicionarNumero(Numero numero) {
    ;
    _numerosController.sink.add(_numero);
  }

  void dispose() {
    _numeroController.close();
    _numerosController.close();
  }
}

//instância global do bloc
final bloc = Bloc();
