import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.casino_rounded, color: AppTheme.primary),
            title: const Text('The Card'),
            subtitle: const Text(
                'Loren asfjajfñasfkañekfañef alefjaiefjlaf Loren asfjajfñasfkañekfañef alefjaiefjlaf Loren asfjajfñasfkañekfañef alefjaiefjlaf'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancelar')),
                TextButton(onPressed: () {}, child: const Text('OK')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
