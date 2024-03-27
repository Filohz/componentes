import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  final options = const ['Fifa 24', 'The las of us', 'Metal gear', 'Gta 5'];

  @override
  Widget build(BuildContext context) {
    final color = Colors.blue[400];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Games'),
        elevation: 0.0,
        backgroundColor: color,
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: Icon(Icons.arrow_forward_ios, color: color),
          onTap: () {
            final game = options[index];
            print(game);
          },
        ),
        separatorBuilder: (context, index) => const Divider(),
      ),
    );
  }
}
