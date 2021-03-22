import 'package:flutter/material.dart';
import 'package:ifood_flutter_clone/core/theme/app_colors.dart';

class FilterComponent extends StatelessWidget {
  const FilterComponent() : super();

  @override
  Widget build(BuildContext context) {
    List<String> items = [
      'Ordenar',
      'Pra retirar',
      'Entrega grátis',
      'Vale-refeição',
      'Distância',
      'Entrega Parceira',
      'Super Restaurante',
      'Filtros'
    ];

    return Container(
      margin: EdgeInsets.symmetric(vertical: 16),
      height: 32,
      alignment: Alignment.center,
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Container(
          margin: EdgeInsets.symmetric(horizontal: 6),
          padding: EdgeInsets.symmetric(vertical: 6, horizontal: 10),
          child: Text(
            items[index],
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 14,
                color: AppColors.textFilterColor,
                fontWeight: FontWeight.w400),
          ),
          decoration: ShapeDecoration(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: AppColors.borderFilter, width: 1))),
        ),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
