class Categorychild {
  late String title;
  late double price;
  late String link;
  late String parent;
  late String quantity;
  late String description;

  Categorychild.fromJson(Map<String, dynamic> json){
    title = json['title'];
    price = json['price'];
    link = json['link'];
    parent = json['parent'];
    quantity = json['quantity'];
    description = json['description'];
  }

  Categorychild({required this.title, required this.price, required this.link, required this.parent, required this.quantity, required this.description});
}