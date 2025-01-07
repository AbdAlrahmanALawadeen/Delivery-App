

class Filter {
  late String parent;
  late String title;
  late int number;
  late bool isPressed;
  late bool showIcon;

  Filter.fromJson(Map<String, dynamic> json){
    parent = json['parent'];
    title = json['title'];
    number = json['number'];
    parent = json['parent'];
    isPressed = json['isPressed'];
    showIcon = json['showIcon'];
  }

  Filter({required this.parent, required this.title, required this.number, required this.isPressed, required this.showIcon});

  
}