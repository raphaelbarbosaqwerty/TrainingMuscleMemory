import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'computed_controller.dart';

class ComputedPage extends StatefulWidget {
  final String title;
  const ComputedPage({Key key, this.title = "Computed"}) : super(key: key);

  @override
  _ComputedPageState createState() => _ComputedPageState();
}

class _ComputedPageState
    extends ModularState<ComputedPage, ComputedController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Nome'),
              onChanged: controller.mudarNome,
            ),
            SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(labelText: 'Sobrenome'),
              onChanged: controller.mudarSobreNome,
            ),
            SizedBox(height: 20),
            Observer(
              builder: (_) {
                return Text('${controller.nomeCompleto}');
              },
            )
          ]
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
        },
        child: Icon(Icons.plus_one),
      ),
    );
  }
}
