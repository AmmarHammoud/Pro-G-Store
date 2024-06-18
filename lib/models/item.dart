abstract class Item {
  late int id;
  late int categoryID;
  late int subcategoryID;
  late String title;
  late int size;
  late int price;

  Item({
    required this.id,
    required this.categoryID,
    required this.subcategoryID,
    required this.title,
    required this.size,
    required this.price,
  });

  Item.fromJson(Map<String, dynamic> json){
    id = json['id'];
    title = json['name'];
    size = json['size'];
    price = json['price'];
    categoryID = json['category_id'];
    subcategoryID = json['subcategory_id'];
  }

}
