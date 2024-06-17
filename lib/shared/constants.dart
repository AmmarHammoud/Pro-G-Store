import 'dart:ui';

import 'package:flutter/material.dart';

import '../screens/item.dart';

List<Item> items = List.generate(
    20, (index) => Item(title: 'title$index', image: y, year: index));

String movieDefaultImage = 'assets/images/movie_default_image.png';
String gameDefaultImage = 'assets/images/game_default_image.jpg';
String courseDefaultImage = 'assets/images/course_default_image.jpg';

String y = 'https://th.bing.com/th/id/OIG1.M3lmhrn6fz3Eqdeb3nqD?w=1024&h=1024&rs=1&pid=ImgDetMain';

FlutterView view = WidgetsBinding.instance.platformDispatcher.views.first;

// Dimensions in physical pixels (px)
Size size = view.physicalSize;
double screenWidth = size.width;
double screenHeight = size.height;

bool isMobile(context){
  return MediaQuery.of(context).size.width < 500;
}