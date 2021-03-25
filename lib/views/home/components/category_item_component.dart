import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/models/category.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';
import 'package:ifood_flutter_clone/core/theme/app_typography.dart';

class CategoryItemComponent extends StatelessWidget {
  final Category category;

  const CategoryItemComponent({required this.category}) : super();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          category.picture,
          height: 60,
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6.0),
          child: Text(
            category.name,
            style: AppTypography.small(context).copyWith(color: AppColors.grey),
          ),
        ),
      ],
    );
  }
}
