import 'package:pro_g_store/models/movie_item.dart';

//CourseItem is different from MovieItem as it shall not contain director
class CourseItem extends MovieItem {
  CourseItem({
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

  CourseItem.fromJson(super.json) : super.fromJson();
}
