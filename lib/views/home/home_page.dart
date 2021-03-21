import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';
import 'components/bottom_navigator_component.dart';
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

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                HeaderLocationComponent(
                  location: 'Rua das Flores do Campo, 10',
                ),
                TabBarComponent(
                  controller: tabController,
                  onTap: (index) {},
                ),
              ],
            ),
          ),
          BottomNavigatorComponent(
            onTap: (index) {
              switch (index) {
                case 0:
                  print('Inicio');
                  break;
                case 1:
                  print('Busca');
                  break;
                case 2:
                  print('Pedidos');
                  break;
                case 3:
                  print('Perfil');
                  break;
                default:
              }
              setState(() {
                _currentIndex = index;
              });
            },
            currentIndex: _currentIndex,
            items: [
              BottomNavigatorItemComponent(
                label: 'Início',
                activeIcon: AppIcons.homeActive,
                icon: AppIcons.home,
                onTap: () {},
              ),
              BottomNavigatorItemComponent(
                label: 'Busca',
                activeIcon: AppIcons.searchActive,
                icon: AppIcons.search,
                onTap: () {},
              ),
              BottomNavigatorItemComponent(
                label: 'Pedidos',
                activeIcon: AppIcons.ordersActive,
                icon: AppIcons.orders,
                onTap: () {},
              ),
              BottomNavigatorItemComponent(
                label: 'Perfil',
                activeIcon: AppIcons.profileActive,
                icon: AppIcons.profile,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
