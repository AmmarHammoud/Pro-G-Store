import 'package:pro_g_store/models/item.dart';

///we need director, and duration
class MovieItem extends Item {
  late double rate;
  late int resolution;
  late String lang;

  MovieItem({
    required super.id,
    required super.categoryID,
    required super.subcategoryID,
    required super.title,
    required super.size,
    required super.price,
    required this.rate,
    required this.resolution,
    required this.lang,
  });

  MovieItem.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    rate = json['rate'];
    resolution = json['resolution'];
    lang = json['lang'];
  }
}
