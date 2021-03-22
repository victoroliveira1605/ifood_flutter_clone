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
    );
  }
}
