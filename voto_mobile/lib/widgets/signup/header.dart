import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:voto_mobile/utils/color.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 20,
        right: 25,
        left: 15,
      ),
      child: Row(
        children: [
          IconButton(
            icon: const Icon(Icons.chevron_left, color: VotoColors.primary),
            onPressed: () {
              Navigator.pushNamed(context, '/login_page');
            },
          ),
          Padding(
            padding: const EdgeInsets.only(
              right: 60,
            ),
            child: Text(
              "Sign Up",
              style: GoogleFonts.inter(
                  fontSize: 20,
                  color: VotoColors.primary,
                  fontWeight: FontWeight.w500),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
