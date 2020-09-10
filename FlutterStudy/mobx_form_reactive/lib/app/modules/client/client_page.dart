import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'client_controller.dart';

class ClientPage extends StatefulWidget {
  final String title;
  const ClientPage({Key key, this.title = "Client"}) : super(key: key);

  @override
  _ClientPageState createState() => _ClientPageState();
}

class _ClientPageState extends ModularState<ClientPage, ClientController> {
  //use 'controller' variable to access controller

  _textField({String labelText, onChanged, String Function() errorText}) {
    return TextField(
      onChanged: onChanged,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: labelText,
        errorText: errorText == null ? null : errorText()
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: <Widget>[
          Observer(
            builder: (_) {
              return _textField(
              errorText: controller.validateName,
              labelText: "Name",
              onChanged: controller.changeName);
            },
          ),
          SizedBox(height: 20,),
          Observer(
            builder: (_) {
              return _textField(
              errorText: controller.validateEmail,
              labelText: "Email",
              onChanged: controller.changeEmail);
            },
          ),
          SizedBox(height: 20,),
          Observer(
            builder: (_) {
              return _textField(
              errorText: controller.validateCpf,
              labelText: "CPF",
              onChanged: controller.changeCpf);
            },
          ),
          SizedBox(height: 50,),
          Observer(
            builder: (_) {
              return Center(
                child: RaisedButton(
                  onPressed: controller.isValid ? () {
                    controller.salvarDados();
                  } : null,
                  child: Text('Salvar'),
                ),
              );
            }
          ),
        ],
      ),
    );
  }
}
