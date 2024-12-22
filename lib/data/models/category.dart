class Category {
  late String title;
  late int number;
  late String link;

  Category.fromJson(Map<String, dynamic> json){
    title = json['title'];
    number = json['number'];
    link = json['link'];
  }
  
  Category({required this.title, required this.number, required this.link});
}