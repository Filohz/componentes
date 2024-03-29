import 'package:fl_componentes/router/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes de Flutter'),
        elevation: 0.0,
      ),
      body: ListView.separated(
        itemCount: menuOptions.length,
        itemBuilder: (context, option) => ListTile(
          leading: Icon(menuOptions[option].icon, color: Colors.indigo),
          title: Text(menuOptions[option].name),
          onTap: () {
            Navigator.pushNamed(context, menuOptions[option].route);
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
