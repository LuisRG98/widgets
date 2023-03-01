import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  final options = const ['Megaman', 'metal gear', 'pokemon', 'digimon'];
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola'),
        ),
        body: ListView(
          children: [
            ...options
                .map((game) => ListTile(
                      title: Text(game),
                      trailing: Icon(Icons.arrow_forward_ios),
                    ))
                .toList(),
          ],
        ));
  }
}
