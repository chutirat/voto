import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: 
        Row(children: [
          Text('login', style: Theme.of(context).textTheme.headline1),
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/signup_page');
            },
            child: const Text('Signup'),
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith((states) => VotoColors.primary)
              )
            )
          ]),  
    );
  }
}