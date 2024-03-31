import 'package:fl_componentes/widgets/widgets.dart';
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
        children: const [
          CustomCard1(),
          SizedBox(height: 10),
          CustomCard2(
            imgUrl:
                'https://community.adobe.com/legacyfs/online/1229106_landscape-16.jpg',
            name: 'Un Hermoso Paisaje',
          ),
          SizedBox(height: 10),
          CustomCard2(
              imgUrl:
                  'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          SizedBox(height: 10),
          CustomCard2(imgUrl: 'https://images.alphacoders.com/134/1341414.png'),
          SizedBox(height: 100)
        ],
      ),
    );
  }
}
