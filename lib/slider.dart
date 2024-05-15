import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class SliderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Control Deslizante'),
      ),
      body: Center(
        child: SfSlider(
          min: 0.0,
          max: 100.0,
          value: 50.0,
          onChanged: (value) {
            // Acción al cambiar el valor del control deslizante
          },
        ),
      ),
    );
  }
}