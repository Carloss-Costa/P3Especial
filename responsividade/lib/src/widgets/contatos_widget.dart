import 'package:flutter/material.dart';
import '../blocs/bloc.dart';
import '../models/contato_model.dart';
import '../widgets/contato_widget.dart';

class ContatosWidget extends StatelessWidget {
  String numeroAtual = '';
  List<Numero> numeros = [Numero('1')];
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(20.0),
        child: Column(
          children: <Widget>[
            textField(),
            Container(
              margin: EdgeInsets.only(top: 12.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: oneButton(),
                  ),
                  Expanded(
                    child: twoButton(),
                  ),
                  Expanded(
                    child: threeButton(),
                  ),
                  Expanded(
                    child: fourButton(),
                  ),
                ],
              ),
            ),
          ],
        ));
  }

  Widget textField() {
    return StreamBuilder(
      stream: bloc.numero,
      builder: (context, snapshot) {
        return TextField(
          onChanged: (valor) {
            bloc.mudarNumero(valor);
            numeroAtual = valor;
          },
          keyboardType: TextInputType.name,
          decoration: InputDecoration(
            labelText: 'número',
            hintText: 'Digite seu número',
            errorText: snapshot.hasError ? snapshot.error.toString() : null,
          ),
        );
      },
    );
  }

  Widget fourButton() {
    return ElevatedButton(
      child: Text('4'),
      onPressed: () => bloc.adicionarNumero(Numero(numeroAtual)),
    );
  }

  Widget oneButton() {
    return ElevatedButton(
      child: Text('1'),
      onPressed: () => bloc.adicionarNumero(Numero(numeroAtual)),
    );
  }

  Widget twoButton() {
    return ElevatedButton(
      child: Text('2'),
      onPressed: () => bloc.adicionarNumero(Numero(numeroAtual)),
    );
  }

  Widget threeButton() {
    return ElevatedButton(
      child: Text('3'),
      onPressed: () => bloc.adicionarNumero(Numero(numeroAtual)),
    );
  }
}
