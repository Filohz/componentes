import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const ['Fifa 24', 'The las of us', 'Metal gear', 'Gta 5'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Juegos'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(Icons.arrow_forward_ios),
          onTap: () {
            final game = options[index];
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
