import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';
import 'package:ifood_flutter_clone/views/home/home_page.dart';
import 'package:ifood_flutter_clone/views/orders/orders_page.dart';
import 'package:ifood_flutter_clone/views/profile/profile_page.dart';
import 'package:ifood_flutter_clone/views/search/search_page.dart';

class TabScreen extends StatefulWidget {
  TabScreen() : super();

  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final _pages = [HomePage(), SearchPage(), OrdersPage(), ProfilePage()];

  int pageIndex = 0;

  void _pageSelect(int index) {
    setState(() {
      pageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _pageSelect,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        backgroundColor: AppColors.white,
        currentIndex: pageIndex,
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.iconUnselected,
        selectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.bold,
          color: AppColors.black,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.normal,
          color: AppColors.black,
        ),
        items: [
          BottomNavigationBarItem(
            label: 'Início',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.homeActive,
                size: Size(26, 26),
                color: AppColors.black,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.home,
                size: Size(22, 22),
                color: AppColors.iconUnselected,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Busca',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.searchActive,
                size: Size(22, 22),
                color: AppColors.black,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.search,
                size: Size(22, 22),
                color: AppColors.iconUnselected,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Pedidos',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.ordersActive,
                size: Size(22, 22),
                color: AppColors.black,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.orders,
                size: Size(22, 22),
                color: AppColors.iconUnselected,
              ),
            ),
          ),
          BottomNavigationBarItem(
            label: 'Perfil',
            activeIcon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.profileActive,
                size: Size(22, 22),
                color: AppColors.black,
              ),
            ),
            icon: Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: AppIcon(
                AppIcons.profile,
                size: Size(22, 22),
                color: AppColors.iconUnselected,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
