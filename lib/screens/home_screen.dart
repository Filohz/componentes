import 'package:fl_componentes/screens/listview2_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) => ListTile(
          leading: const Icon(Icons.adobe_sharp),
          title: const Text('Nombre de la ruta'),
          onTap: () {
            final route = MaterialPageRoute(
              builder: (context) => const Listview2Screen(),
            );
            Navigator.push(context, route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
