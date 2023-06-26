import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class ContentWiget extends StatelessWidget {
  const ContentWiget({super.key});

  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);

    return Center(
        child: Container(
            child: prov.sedangMemanggang == true
                ? SizedBox(
                    width: 100,
                    child: TweenAnimationBuilder(
                        tween: Tween<double>(begin: 0, end: 1),
                        duration: Duration(seconds: prov.sliderValue.round()),
                        builder: (context, double value, _) =>
                            LinearProgressIndicator(
                              value: value,
                            )),
                  )
                : prov.selesaiMasak == true
                    ? Tooltip(
                        message: 'Ayam Panggang',
                        child: Image.network(
                          'https://bit.ly/ayampanggang22',
                          width: 300,
                        ),
                      )
                    : Container()));
  }
}
