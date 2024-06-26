import 'package:pro_g_store/models/movie_item.dart';

///we need episodes
class SeriesItem extends MovieItem {
  SeriesItem({
    required super.id,
    required super.category,
    required super.subcategory,
    required super.title,
    required super.size,
    required super.price,
    required super.date,
    required super.rate,
    required super.resolution,
    required super.lang,
  });

  SeriesItem.fromJson(super.json) : super.fromJson();
}
