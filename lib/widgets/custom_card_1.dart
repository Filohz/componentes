import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCard1 extends StatelessWidget {
  const CustomCard1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.casino_rounded, color: AppTheme.primary),
            title: Text('Titulo list Tile'),
            subtitle: Text(
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
