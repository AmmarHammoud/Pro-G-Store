import 'package:pro_g_store/models/item.dart';

///we need pc requirement
class GameItem extends Item {
  GameItem({
    required super.id,
    required super.category,
    required super.subcategory,
    required super.title,
    required super.size,
    required super.price,
    required super.date,
  });

  GameItem.fromJson(super.json) : super.fromJson();
}
