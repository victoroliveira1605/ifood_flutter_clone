import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/views/home/components/material_indicator_component.dart';

class TabBarComponent extends StatelessWidget {
  final TabController controller;
  final Function(int) onTap;

  const TabBarComponent({required this.controller, required this.onTap})
      : super();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
              flex: 2,
              child: TabBar(
                labelPadding: EdgeInsets.zero,
                onTap: onTap,
                indicatorPadding: EdgeInsets.zero,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
                labelColor: AppColors.primaryColor,
                unselectedLabelColor: AppColors.titleColor,
                indicator: MaterialIndicator(
                    color: AppColors.primaryColor,
                    height: 1,
                    horizontalPadding: 8),
                controller: controller,
                tabs: [
                  Tab(
                    child: Text(
                      'Restaurantes',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Mercados',
                      style: TextStyle(fontSize: 18),
                    ),
                  )
                ],
              )),
          Expanded(flex: 1, child: Container()),
        ],
      ),
    );
  }
}
