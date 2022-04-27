import 'package:flutter/material.dart';
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
      title: 'My team',
      body: Column(
        children: const [
          Text('Hello world')
        ]
      ),
    );
  }
}
