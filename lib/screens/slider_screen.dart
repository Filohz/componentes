import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slider = 10.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Slider(
              activeColor: AppTheme.primary,
              min: 10.0,
              max: 400.0,
              value: _slider,
              onChanged: (value) {
                _slider = value;
                setState(() {});
              },
            ),
            Image(
              image: const NetworkImage(
                  'https://i.pinimg.com/originals/5c/44/59/5c4459cf68f2fff74ec1c753b10ae6a5.png'),
              width: _slider,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20)
          ],
        ),
      ),
    );
  }
}
