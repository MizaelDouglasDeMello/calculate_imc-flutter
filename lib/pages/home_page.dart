import 'package:calculate_imc/pages/setStates/imc_setstate_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  void _goToPage(BuildContext context, Widget page) {
    Navigator.push(context, MaterialPageRoute(builder: (context) => page));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          ElevatedButton(
              onPressed: () => _goToPage(context, ImcSetstatePage()),
              child: const Text('SetState')),
          ElevatedButton(onPressed: () {}, child: const Text('ChangeNotifier')),
          ElevatedButton(onPressed: () {}, child: const Text('ValueNotifier')),
          ElevatedButton(
              onPressed: () {}, child: const Text('Bloc Pattern (Stream)')),
        ],
      )),
    );
  }
}
