import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/views/tabs/tabs.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'IFood Flutter Clone',
      debugShowCheckedModeBanner: false,
      home: TabScreen(),
    );
  }
}
