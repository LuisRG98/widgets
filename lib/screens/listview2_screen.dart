import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const ['Megaman', 'metal gear', 'pokemon', 'digimon'];
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('hola'),
          centerTitle: true,
          elevation: 0.5,
        ),
        body: ListView.separated(
          itemCount: options.length,
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(options[index]),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {},
            );
          },
          separatorBuilder: (_, __) => const Divider(),
        ));
  }
}
