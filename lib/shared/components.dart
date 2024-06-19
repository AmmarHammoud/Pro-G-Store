import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/all_items_in_category/all_items_in_category.dart';
import 'package:pro_g_store/screens/item.dart';
import 'package:pro_g_store/shared/constants.dart';

navigateTo(context, Widget widget) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => widget));
}

class ItemsList extends StatelessWidget {
  ItemsList({super.key, required this.condition, required this.items});

  final bool condition;
  final List items;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: condition,
      builder: (context) => AspectRatio(
        aspectRatio: isMobile(context) ? 1 / 1 : 4 / 1,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Scrollbar(
                controller: scrollController,
                thumbVisibility: true,
                child: SizedBox(
                  width: isMobile(context)
                      ? getWidth(context) * 0.25
                      : getWidth(context) * 0.9,
                  //height: 215.0,
                  height: isMobile(context)
                      ? getHeight(context) * 0.135
                      : getHeight(context) * 0.4,
                  child: ListView.builder(
                    controller: scrollController,
                    physics: const BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      //return itemBuilder(list[index]);
                      return Item(itemObject: items[index],);
                    },
                    itemCount: items.length,
                  ),
                ),
              ),
            ),
            // Container(
            //   //color: Colors.blue,
            //   decoration: const BoxDecoration(
            //     gradient: LinearGradient(
            //       begin: Alignment.centerRight,
            //       end: Alignment.centerLeft,
            //       colors: [
            //         Colors.white,
            //         Colors.grey,
            //       ],
            //     ),
            //   ),
            //   child: const Text('show all'),
            // ),
            ShowAllButton(
              items: items,
            ),
          ],
        ),
      ),
      fallback: (context) => const Center(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({super.key, required this.items});

  final List items;

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: getHeight(context),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.centerRight,
          end: Alignment.centerLeft,
          colors: [
            Colors.white,
            Colors.grey,
          ],
        ),
      ),
      child: TextButton(
        onPressed: () {
          navigateTo(context, AllItemsInCategory(items: items));
        },
        child: const Text('show all'),
      ),
    );
  }
}

class ItemImage extends StatelessWidget {
  const ItemImage({super.key, required this.networkImage, this.scale = 1});

  final String networkImage;
  final double scale;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(15.0),
      child: Image.network(
        networkImage,
        scale: scale,
        fit: BoxFit.fill,
        loadingBuilder: (context, child, loadingProgress) {
          if (loadingProgress == null) return child;
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
