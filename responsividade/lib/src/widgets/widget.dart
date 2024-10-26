import 'package:flutter/material.dart';

//mostrar um contato com nome e numero
//cada contato deve ter uma borda clara entre nome e numero
//cada par nome/numero deve ser englobado num card com sombra
class ContatoWidget extends StatelessWidget {
  final String numero;
  ContatoWidget(this.numero);
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
                margin: EdgeInsets.only(top: 10.0),
                child: Text(
                  numero,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ),
    );
  }
}
