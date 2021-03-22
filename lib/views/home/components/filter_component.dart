import 'package:flutter/material.dart';

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

    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) => Text(items[index]),
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
