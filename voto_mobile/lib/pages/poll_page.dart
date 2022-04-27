import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';

class PollPage extends StatelessWidget {
  const PollPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(children: [
        const Text('Vote'),
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
