import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 100,
        right: 25,
        left: 25,
      ),
      child: Container(
        child: Image.asset(
          'logo.png',
          width: 250,
          height: 150,
        ),
      ),
    );
  }
}
