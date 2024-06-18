import 'package:pro_g_store/models/item.dart';

///we need pc requirement
class GameItem extends Item {
  GameItem({
    required super.id,
    required super.categoryID,
    required super.subcategoryID,
    required super.title,
    required super.size,
    required super.price,
  });

  GameItem.fromJson(super.json) : super.fromJson();
}
