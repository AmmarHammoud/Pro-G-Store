import 'package:pro_g_store/models/item.dart';

///we need director, and duration
class MovieItem extends Item {
  late int rate;
  late int resolution;
  late String lang;

  MovieItem({
    required super.id,
    required super.category,
    required super.subcategory,
    required super.title,
    required super.size,
    required super.price,
    required super.date,
    required this.rate,
    required this.resolution,
    required this.lang,
  });

  MovieItem.fromJson(Map<String, dynamic> json) : super.fromJson(json) {
    //rate = json['rate'];
    //resolution = json['resolution'];
    //lang = json['lang'];
  }
}
