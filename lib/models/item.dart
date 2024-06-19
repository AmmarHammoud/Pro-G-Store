import '../shared/constants.dart';

abstract class Item {
  late int id;
  late String category;
  late String subcategory;
  late String title;
  late int size;
  late int price;
  late String date;
  late String image;
  late String description;

  Item({
    required this.id,
    required this.category,
    required this.subcategory,
    required this.title,
    required this.size,
    required this.price,
    required this.date,
  });

  Item.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['name'];
    size = json['size'];
    price = json['price'];
    category = json['category'];
    subcategory = json['sub_category'];
    date = json['date'].substring(0, 4);
    image = json['image'] ?? y;
    description = json['description'] ??
        'Jake Sully lives with his newfound family formed on the extrasolar moon Panfora. Once a familiar threat rreturn to finish what was previously started, Jake must work with Neytiri and army of the Navi race to protect their home';
  }
}
