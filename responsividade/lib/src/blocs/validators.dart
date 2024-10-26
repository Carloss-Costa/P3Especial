import 'dart:async';

mixin Validators {
  static final regExpNumero = RegExp('^\\([0-9]{2}\\)[0-9]{5}-[0-9]{4}\$');
  final validarNumero = StreamTransformer<String, String>.fromHandlers(
      handleData: (numero, sink) {
    if (regExpNumero.allMatches(numero).length == 1) {
      sink.add(numero);
    } else {
      sink.addError('Número deve estar no formato (xx)xxxxx-xxxx');
    }
  });
}
