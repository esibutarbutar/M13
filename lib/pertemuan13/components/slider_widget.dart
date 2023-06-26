import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class SlideWidget extends StatelessWidget {
  const SlideWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return SliderTheme(
      data: SliderThemeData(
        showValueIndicator: ShowValueIndicator.always,
        valueIndicatorTextStyle: TextStyle(color: Colors.white),
      ),
      child: Tooltip(
        message: prov.sliderValue.toString(),
        child: Slider(
          value: prov.sliderValue,
          min: 0,
          max: 10,
          onChanged: (value) {
            prov.setSliderValue = value;
          },
          label: prov.sliderValue.round().toString(),
          divisions: 10,
          activeColor: Colors.blue,
          inactiveColor: Colors.grey,
          semanticFormatterCallback: (double value) => value.round().toString(),
        ),
      ),
    );
  }
}
