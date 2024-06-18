import 'package:conditional_builder_null_safety/conditional_builder_null_safety.dart';
import 'package:flutter/material.dart';
import 'package:pro_g_store/screens/item.dart';
import 'package:pro_g_store/shared/constants.dart';

class ItemsList extends StatelessWidget {
  ItemsList({super.key, required this.condition, required this.list});

  final bool condition;
  final List list;
  final scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return ConditionalBuilder(
      condition: condition,
      builder: (context) => AspectRatio(
        aspectRatio: isMobile(context) ? 1 / 1 : 4 / 1,
        child: Container(
          color: Colors.green,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Scrollbar(
                  controller: scrollController,
                  thumbVisibility: true,
                  child: SizedBox(
                    width: isMobile(context)
                        ? screenWidth * 0.25
                        : screenWidth * 0.9,
                    //height: 215.0,
                    height: isMobile(context)
                        ? screenHeight * 0.135
                        : screenHeight * 0.4,
                    child: ListView.builder(
                      controller: scrollController,
                      physics: const BouncingScrollPhysics(),
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: true,
                      itemBuilder: (context, index) {
                        //return itemBuilder(list[index]);
                        return AspectRatio(
                            aspectRatio: isMobile(context) ? 1 / 2 : 3 / 4,
                            child: Item(
                                title: list[index].title,
                                image: list[index].image,
                                year: list[index].year));
                      },
                      itemCount: list.length,
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
              ShowAllButton(),
            ],
          ),
        ),
      ),
      fallback: (context) => const Center(
        child: Center(child: CircularProgressIndicator()),
      ),
    );
  }
}

class ShowAllButton extends StatelessWidget {
  const ShowAllButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Colors.blue,
      height: screenHeight,
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
        onPressed: () {},
        child: const Text('show all'),
      ),
    );
  }
}
