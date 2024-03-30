import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.casino_rounded, color: AppTheme.primary),
                  title: const Text('The Card'),
                  subtitle: const Text(
                      'Loren asfjajfñasfkañekfañef alefjaiefjlaf Loren asfjajfñasfkañekfañef alefjaiefjlaf Loren asfjajfñasfkañekfañef alefjaiefjlaf'),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
