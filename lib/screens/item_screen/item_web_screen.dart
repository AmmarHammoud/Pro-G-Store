import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pro_g_store/shared/components.dart';

import '../../shared/constants.dart';

class ItemWebScree extends StatelessWidget {
  const ItemWebScree({super.key, required this.itemObject});

  final dynamic itemObject;

  @override
  Widget build(BuildContext context) {
    //print(screenWidth);
    //print(MediaQuery.of(context).size.width);
    return Scaffold(
      appBar: AppBar(title: Text('Details'),),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: AspectRatio(
          aspectRatio: 16 / 9,
          child: Row(
            //mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ItemImage(
                networkImage: itemObject.image,
                scale: 4,
              ),
              //ItemImage(networkImage: itemObject.image, scale: 4,),
              SizedBox(
                width: getWidth(context) * 0.02,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(itemObject.title),
                    SizedBox(
                      height: getHeight(context) * 0.03,
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
                        Expanded(child: Text('duration: 3h 12m')),
                      ],
                    ),
                    SizedBox(
                      height: getHeight(context) * 0.03,
                    ),
                    SizedBox(
                      width: getWidth(context) * 0.4,
                      child: Text(itemObject.description),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
