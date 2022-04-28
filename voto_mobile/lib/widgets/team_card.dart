import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';

class TeamCard extends StatelessWidget {
  final String imagePath;
  final String title;
  final Function()? onTap;
  const TeamCard({ Key? key, required this.imagePath, required this.title, required this.onTap }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
        top: 8.0,
        bottom: 8.0,
        left: 15.0,
        right: 15.0
      ),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: VotoColors.indigo.shade400),
          borderRadius: const BorderRadius.all(Radius.circular(20.0)),
          boxShadow: const <BoxShadow>[
            BoxShadow(
                color: Color.fromRGBO(0, 0, 0, 0.1),
                blurRadius: 5.0,
                offset: Offset(1.0, 2.0))
          ],
          color: VotoColors.white,
        ),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            borderRadius: const BorderRadius.all(Radius.circular(20.0)),
            splashColor: VotoColors.indigo.shade100,
            onTap: onTap,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(imagePath),
                    radius: 30.0,
                  ),
                  const SizedBox(width: 15.0),
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w700,
                      color: VotoColors.indigo
                    ),
                  )
                ]),
            ),
          ),
        ),
      ),
    );
  }
}