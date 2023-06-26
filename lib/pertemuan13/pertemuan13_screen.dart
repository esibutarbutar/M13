import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_13/pertemuan13/components/contents_widgets.dart';
import 'package:flutter_application_13/pertemuan13/components/progress_indicator_widget.dart';
import 'package:flutter_application_13/pertemuan13/components/slider_widget.dart';
import 'package:flutter_application_13/pertemuan13/pertemuan13_provider.dart';
import 'package:provider/provider.dart';

class Pertemaun13Screen extends StatefulWidget {
  const Pertemaun13Screen({super.key});

  @override
  State<Pertemaun13Screen> createState() => _Pertemaun13ScreenState();
}

class _Pertemaun13ScreenState extends State<Pertemaun13Screen> {
  @override
  Widget build(BuildContext context) {
    final prov = Provider.of<Pertemuan13Provider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pertemuan13'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Durasi Panggang: ${prov.sliderValue.round().toString()}'),
            const SlideWidget(),
            const Align(
              child: ProgressIndicatorWidget(),
              alignment: Alignment.bottomRight,
            ),
            const SizedBox(height: 100),
            const ContentWiget()
          ],
        ),
      ),
    );
  }
}
