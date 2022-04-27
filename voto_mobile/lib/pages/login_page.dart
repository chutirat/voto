import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';
import 'package:voto_mobile/widgets/login/custom_textform.dart';
import 'package:voto_mobile/widgets/login/login_click.dart';
import 'package:voto_mobile/widgets/login/sign_up_click.dart';
import 'package:voto_mobile/widgets/login/logo.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: VotoColors.primary,
      body: Container(
        child: Column(
          children: [
            Logo(),
            CustomTextForm(),
            LoginClick(),
            SignUpClick(),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/home_page');
            //     },
            //     child: const Text('Sign up'),
            //     style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.resolveWith(
            //             (states) => VotoColors.primary)))
          ],
        ),

        // Text('login', style: Theme.of(context).textTheme.headline1),
        //
      ),
    );
  }
}
