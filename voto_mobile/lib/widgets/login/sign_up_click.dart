import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:voto_mobile/utils/color.dart';

class SignUpClick extends StatelessWidget {
  const SignUpClick({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 25,
        right: 25,
        left: 25,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          RichText(
            text: TextSpan(
              text: "Don't have account? ",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/home_page');
            },
            child: const Text(
              'Sign up',
              style: TextStyle(
                color: VotoColors.secondary,
                fontWeight: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
