import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/models/category.dart';
import 'package:ifood_flutter_clone/views/home/components/category_item_component.dart';
import 'package:ifood_flutter_clone/views/home/home_controller.dart';
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
  final controller = HomeController();
  late List<Category> categorys;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    categorys = controller.getCategorys();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: NestedScrollView(
        physics: BouncingScrollPhysics(),
        headerSliverBuilder: (context, innetBoxScroll) {
          return [
            HeaderLocationComponent(
              location: 'Rua das Flores do Campo, 10',
            ),
            TabBarComponent(
              controller: tabController,
              onTap: (index) {},
            ),
            FilterComponent(),
          ];
        },
        body: Column(
          children: [
            Expanded(
              child: RefreshIndicator(
                onRefresh: () async {
                  return await Future.value();
                },
                child: CustomScrollView(
                  physics: BouncingScrollPhysics(),
                  slivers: [
                    SliverToBoxAdapter(
                      child: SizedBox(
                        height: 86,
                        child: ListView.builder(
                          itemCount: categorys.length,
                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: EdgeInsets.only(
                                left: index == 0 ? 16 : 0,
                                right: index == categorys.length - 1 ? 16 : 10,
                              ),
                              child: CategoryItemComponent(
                                category: categorys[index],
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
