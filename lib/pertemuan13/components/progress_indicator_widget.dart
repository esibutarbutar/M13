import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_13/pertemuan13/pertemuan13_provider.dart';

class ProgressIndicatorWidget extends StatelessWidget {
  const ProgressIndicatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return ElevatedButton(
      style: ElevatedButton.styleFrom(minimumSize: Size(100, 90)),
      onPressed: () {
        if (prov.sliderValue.round() == 0) {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Durasi Tidak Boleh 0"),
                content: Text(
                    "Durasi memanggang tidak boleh 0. Silakan atur durasi yang valid."),
                actions: [
                  TextButton(
                    child: Text("OK"),
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                  ),
                ],
              );
            },
          );
        } else {
          prov.mulaiMemanggang(prov.sliderValue.round());
        }
      },
      child: prov.sedangMemanggang
          ? Column(
              children: [
                CircularProgressIndicator(
                  value: prov.progress / prov.sliderValue.round(),
                  color: Colors.white,
                ),
                SizedBox(height: 10),
                Text(
                  '${prov.progress.toStringAsFixed(0)} seconds',
                  style: TextStyle(color: Colors.white),
                ),
              ],
            )
          : const Text('Panggang'),
    );
  }
}
