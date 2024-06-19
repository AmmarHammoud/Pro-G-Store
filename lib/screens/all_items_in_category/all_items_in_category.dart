import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item.dart';

import '../../shared/constants.dart';

class AllItemsInCategory extends StatelessWidget {
  const AllItemsInCategory({super.key, required this.items});

  final List<dynamic> items;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All'),
      ),
      body: GridView.builder(

        shrinkWrap: true,
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: isMobile(context) ? 2 : 5,
            childAspectRatio: isMobile(context) ? 0.5 : 0.8,
            mainAxisSpacing: 15
          ),
          itemBuilder: (context, index) => Item(itemObject: items[index],)),
    );
  }
}
