import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';

class RandomResultPage extends StatelessWidget {
  const RandomResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Text('Random result'),
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Back'),
            style: ButtonStyle(
                backgroundColor: MaterialStateProperty.resolveWith(
                    (states) => VotoColors.primary)))
      ]),
    );
  }
}
