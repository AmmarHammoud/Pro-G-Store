import 'package:flutter/material.dart';
import 'package:pro_g_store/shared/components.dart';

import '../../shared/constants.dart';

class ItemMobileScreen extends StatelessWidget {
  const ItemMobileScreen({super.key, required this.itemObject});

  final dynamic itemObject;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(child: ItemImage(networkImage: itemObject.image, scale: 5,)),
            SizedBox(
              height: getHeight(context)*0.007,
            ),
            Row(
              children: [
                if (itemObject.category != 'Game')
                  Text('ra: ${itemObject.rate ?? '-'}/10'),
                SizedBox(
                  width: getHeight(context) * 0.01,
                ),
                Text('PG: 13'),
                SizedBox(
                  width: getHeight(context) * 0.01,
                ),
                Text('duration: 3h 12m'),
              ],
            ),
            SizedBox(
              height: getHeight(context)*0.01,
            ),
            //categories
            Text(itemObject.title),
            SizedBox(
              height: getHeight(context)*0.007,
            ),
            Text(itemObject.description)
          ],
        ),
      ),
    );
  }
}
