import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';

class SplashPage extends StatelessWidget {
  const SplashPage() : super();

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      Duration(seconds: 2),
      () {
        Navigator.pushNamed(context, '/tab');
      },
    );
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              child: Image.asset(
                "assets/images/logo.jpeg",
                height: 60,
                width: 180,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
