import 'package:flutter/material.dart';
import 'components/tab_bar_component.dart';
import 'components/header_local_component.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Column(
          children: [
            HeaderLocationComponent(
              location: 'R. Daniel Ferranti, 455',
            ),
            TabBarComponent(
              controller: tabController,
              onTap: (index) {},
            ),
          ],
        ),
      ),
    );
  }
}
