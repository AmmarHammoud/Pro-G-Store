import 'dart:ui';

import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item.dart';
import 'package:pro_g_store/shared/constants.dart';

class ItemsList extends StatelessWidget {
  const ItemsList({super.key, required this.condition, required this.list});
  final bool condition;
  final List list;
  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: condition,
      builder: (context) => Container(
        //width: screenWidth,
        //height: 215.0,
        height: screenHeight*0.16,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            //return itemBuilder(list[index]);
            return Item(title: list[index].title, image: list[index].image, year: list[index].year);
          },
          itemCount: list.length,
        ),
      ),
      fallback: (context) => const Center(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
