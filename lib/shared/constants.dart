import 'dart:ui';

import 'package:flutter/material.dart';

import '../screens/item.dart';

// List<Item> items = List.generate(
//     20, (index) => Item(title: 'title$index', image: y, year: index));

String movieDefaultImage = 'assets/images/movie_default_image.png';
String gameDefaultImage = 'assets/images/game_default_image.jpg';
String courseDefaultImage = 'assets/images/course_default_image.jpg';

String x = 'https://th.bing.com/th/id/OIG1.M3lmhrn6fz3Eqdeb3nqD?w=1024&h=1024&rs=1&pid=ImgDetMain';
String y = 'https://cdn.prod.website-files.com/6009ec8cda7f305645c9d91b/6408f676b5811234c887ca62_top%20gun%20maverick-min.png';

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
// Size size = view.physicalSize;
// double screenWidth = size.width;
// double screenHeight = size.height;

bool isMobile(context){
  return MediaQuery.of(context).size.width < 500;
}

getWidth(context){ return MediaQuery.of(context).size.width;}
getHeight(context){ return MediaQuery.of(context).size.height;}