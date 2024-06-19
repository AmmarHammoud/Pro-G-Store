import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item_screen/item_screen.dart';
import 'package:pro_g_store/shared/components.dart';
import 'package:pro_g_store/shared/constants.dart';

class Item extends StatelessWidget {
  const Item({super.key, required this.itemObject});

  final dynamic itemObject;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: AspectRatio(
        aspectRatio: isMobile(context) ? 1 / 2 : 3 / 4,
        child: InkWell(
          onTap: () {
            navigateTo(context, ItemScreen(itemObject: itemObject,));
          },
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: isMobile(context)
                        ? getWidth(context) * 0.15
                        : getWidth(context) * 0.13,
                    height: isMobile(context)
                        ? getHeight(context) * 0.11
                        : getHeight(context) * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.grey[300],
                    ),
                    child: ItemImage(networkImage: itemObject.image),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        itemObject.title,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                      Text(
                        itemObject.date,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
