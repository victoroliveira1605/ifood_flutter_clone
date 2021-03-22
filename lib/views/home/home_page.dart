import 'package:flutter/material.dart';
import 'components/filter_component.dart';
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
    return Column(
      mainAxisSize: MainAxisSize.max,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        HeaderLocationComponent(
          location: 'Rua das Flores do Campo, 10',
        ),
        TabBarComponent(
          controller: tabController,
          onTap: (index) {},
        ),
        FilterComponent()
      ],
    );
  }
}
