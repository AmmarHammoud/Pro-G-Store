abstract class Item {
  late int id;
  late String category;
  late String subcategory;
  late String title;
  late int size;
  late int price;
  late String date;

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
    //print(json['date'].runtimeType);
  }
}
