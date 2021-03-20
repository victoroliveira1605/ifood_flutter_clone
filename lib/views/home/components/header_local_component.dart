import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_icons.dart';

class HeaderLocationComponent extends StatelessWidget {
  final String location;

  const HeaderLocationComponent({required this.location}) : super();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          SizedBox(
            height: MediaQuery.of(context).padding.top,
          ),
          Row(
            children: [
              Expanded(
                flex: 12,
                child: Container(
                  padding: EdgeInsets.only(
                    left: 5,
                  ),
                  height: 22,
                  child: Row(
                    children: [
                      Text(
                        location,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                        ),
                      ),
                      AppIcon(
                        AppIcons.arrowDown,
                        size: Size(20, 20),
                        color: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 1,
                child: Container(
                  height: 22,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Icon(
                      Icons.qr_code_scanner_sharp,
                      color: Colors.red,
                      size: 22,
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
