import 'package:flutter/material.dart';
import 'package:voto_mobile/utils/color.dart';
import 'package:voto_mobile/widgets/rich_button.dart';
import 'package:voto_mobile/widgets/team_card.dart';
import 'package:voto_mobile/widgets/voto_scaffold.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  void openMenu() {

  }

  @override
  Widget build(BuildContext context) {
    return VotoScaffold(
      title: 'My Team',
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                RichButton(text: 'Create team', icon: Icons.add, accentColor: VotoColors.indigo, onPressed: () {}),
                const SizedBox(width: 10.0,),
                RichButton(text: 'Join team', icon: Icons.people, accentColor: VotoColors.magenta, onPressed: () {})
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: [
                TeamCard(
                  imagePath: "dummy/misc2.jpg",
                  title: "Integrated Project II",
                  onTap: () { Navigator.pushNamed(context, "/team_page"); }),
                TeamCard(
                  imagePath: "dummy/misc4.jpg",
                  title: "GEN351",
                  onTap: () { Navigator.pushNamed(context, "/team_page"); }),
                TeamCard(
                  imagePath: "dummy/misc1.jpg",
                  title: "ไข่ปิ้งมั้ยคะ",
                  onTap: () { Navigator.pushNamed(context, "/team_page"); }),
                TeamCard(
                  imagePath: "dummy/misc3.jpg", 
                  title: "CS#21", 
                  onTap: () { Navigator.pushNamed(context, "/team_page"); }),
              ],),
          )
        ],
      ),
    );
  }
}
