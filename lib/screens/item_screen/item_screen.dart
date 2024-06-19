import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item_screen/item_mobile_screen.dart';
import 'package:pro_g_store/screens/item_screen/item_web_screen.dart';

import '../../shared/constants.dart';

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.itemObject});

  final dynamic itemObject;

  @override
  Widget build(BuildContext context) {
    return isMobile(context)
        ? ItemMobileScreen(
            itemObject: itemObject,
          )
        : ItemWebScree(
            itemObject: itemObject,
          );
  }
}
