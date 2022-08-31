import 'package:flutter/material.dart';

class TwoPage extends StatelessWidget {
  const TwoPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)!.settings.arguments as String;

    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      backgroundColor: Colors.blue.shade100,
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop('Retorno');
          },
          child: Text('Voltar para primeira Page $args'),
        ),
      ),
    );
  }
}
