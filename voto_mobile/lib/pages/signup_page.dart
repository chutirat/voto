import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voto_mobile/utils/color.dart';
import 'package:voto_mobile/widgets/signup/button_click.dart';
import 'package:voto_mobile/widgets/signup/header.dart';
import 'package:voto_mobile/widgets/signup/sign_up_textform.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            Header(),
            Padding(
              padding: const EdgeInsets.only(
                top: 70,
              ),
              child: Text(
                "Create your account to start using Vo-To",
                style: GoogleFonts.inter(
                    fontSize: 14,
                    color: VotoColors.primary,
                    fontWeight: FontWeight.w500),
                textAlign: TextAlign.center,
              ),
            ),
            SignUpTextForm(),
            ButtonClick(),
            // const Text('signup'),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pop(context);
            //     },
            //     child: const Text('Back'),
            //     style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.resolveWith(
            //             (states) => VotoColors.primary)))
          ],
        ),
      ),
    );
  }
}
