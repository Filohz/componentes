import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({Key? key}) : super(key: key);

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _slider = 10.0;
  bool _sliderEnabled = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Slider')),
      body: Column(
        children: [
          Slider.adaptive(
            activeColor: AppTheme.primary,
            min: 10.0,
            max: 400.0,
            value: _slider,
            onChanged: _sliderEnabled
                ? (value) {
                    _slider = value;
                    setState(() {});
                  }
                : null,
          ),
          /*Checkbox(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) {
              _sliderEnabled = value ?? true;
              setState(() {});
            },
          ),*/
          /*Switch(
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),*/
          CheckboxListTile.adaptive(
            title: const Text("Enabled slider"),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value ?? true;
            }),
          ),
          SwitchListTile.adaptive(
            title: const Text("Enabled slider"),
            activeColor: AppTheme.primary,
            value: _sliderEnabled,
            onChanged: (value) => setState(() {
              _sliderEnabled = value;
            }),
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Image(
                image: const NetworkImage(
                    'https://i.pinimg.com/originals/5c/44/59/5c4459cf68f2fff74ec1c753b10ae6a5.png'),
                width: _slider,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 20)
        ],
      ),
    );
  }
}
