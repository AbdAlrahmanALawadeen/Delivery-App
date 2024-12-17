import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/models/filter.dart';

List<Category> categories = [
  Category(
    title : 'Vegetables',
    number : 43,
    link: 'assets/images/vegetables.jpg'
  ),
  Category(
    title : 'Fruites',
    number : 32,
    link: 'assets/images/orange1.jpg'
  ),
  Category(
    title : 'Bread',
    number : 22,
    link: 'assets/images/bread.jpg'
  ),
  Category(
    title : 'Sweets',
    number : 56,
    link: 'assets/images/sweets.jpg'
  ),
  Category(
    title : 'Vegetables',
    number : 43,
    link: 'assets/images/vegetables.jpg'
  ),
  Category(
    title : 'Fruites',
    number : 32,
    link: 'assets/images/orange1.jpg'
  ),
  Category(
    title : 'Bread',
    number : 22,
    link: 'assets/images/bread.jpg'
  ),
  Category(
    title : 'Sweets',
    number : 56,
    link: 'assets/images/sweets.jpg'
  ),
];

List<Categorychild> categoryChildren = [
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/cabbage1.jpg',
    title: 'Savoy Cabbage',
    price: 1.45,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/boston.jpeg',
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/cabbage1.jpg',
    title: 'Savoy Cabbage',
    price: 1.45,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: 'assets/images/purple_cauliflower.jpg',
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Fruites',
    link: 'assets/images/orange1.jpg',
    title: 'Apple',
    price: 1.10,
    quantity : 'kg'
  ),
  Categorychild(
    parent: 'Fruites',
    link: 'assets/images/orange1.jpg',
    title: 'Banana',
    price: 1.45,
    quantity: 'kg'
  ),
  Categorychild(
    parent: 'Fruites',
    link: 'assets/images/orange1.jpg',
    title: 'Orange',
    price: 1.85,
    quantity: 'kg'
  ),
];

List<Filter> filterChoices = [
  Filter(parent: 'Vegetables', title: 'Сabbage and lettuce', number: 14, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Сucumbers and tomatoes', number: 10, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Oinons and garlic', number: 7, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Peppers', number: 8, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Potatoes and carrots', number: 4, isPressed: false, showIcon: false),
  Filter(parent: 'Fruites', title: 'Apple and Orange', number: 14, isPressed: false, showIcon: false),
  Filter(parent: 'Fruites', title: 'Banana', number: 10, isPressed: false, showIcon: false),
  Filter(parent: 'Fruites', title: 'watermelons', number: 7, isPressed: false, showIcon: false),
  Filter(parent: 'Fruites', title: 'mangoes', number: 8, isPressed: false, showIcon: false),
  Filter(parent: 'Fruites', title: 'blueberries', number: 4, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Сabbage and lettuce', number: 14, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Сucumbers and tomatoes', number: 10, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Oinons and garlic', number: 7, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Peppers', number: 8, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Potatoes and carrots', number: 4, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Сabbage and lettuce', number: 14, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Сucumbers and tomatoes', number: 10, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Oinons and garlic', number: 7, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Peppers', number: 8, isPressed: false, showIcon: false),
  Filter(parent: 'Vegetables', title: 'Potatoes and carrots', number: 4, isPressed: false, showIcon: false),
];

List<String> images = [
  'assets/images/boston.jpeg',
  'assets/images/boston1.jpeg',
  'assets/images/boston2.jpeg',
];