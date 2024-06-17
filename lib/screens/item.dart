import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pro_g_store/shared/constants.dart';

class Item extends StatelessWidget {
  const Item(
      {super.key,
      required this.title,
      required this.image,
      required this.year});

  final String title;
  final String image;
  final int year;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6.0),
      child: InkWell(
        onTap: () {
          //navigateTo(context, MovieScreen(item.id, model, false));
        },
        child: SizedBox(
          //width: 125.0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Container(
                  width:
                      isMobile(context) ? screenWidth * 0.15 : screenWidth * 0.13,
                  height: isMobile(context)
                      ? screenHeight * 0.11
                      : screenHeight * 0.3,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    color: Colors.grey[300],
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15.0),
                    child: Image(
                      fit: BoxFit.fill,
                      //fit: BoxFit.fill,
                      image: NetworkImage(image),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0, top: 4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      year.toString(),
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
    );
  }
}
