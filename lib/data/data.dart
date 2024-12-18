import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/models/filter.dart';

List<Category> categories = [
  Category(
    title : 'Vegetables',
    number : 43,
    link: Assets.images.vegetables.path
  ),
  Category(
    title : 'Fruites',
    number : 32,
    link: Assets.images.orange1.path
  ),
  Category(
    title : 'Bread',
    number : 22,
    link: Assets.images.bread.path
  ),
  Category(
    title : 'Sweets',
    number : 56,
    link: Assets.images.sweets.path
  ),
  Category(
    title : 'Vegetables',
    number : 43,
    link: Assets.images.vegetables.path
  ),
  Category(
    title : 'Fruites',
    number : 32,
    link: Assets.images.orange1.path
  ),
  Category(
    title : 'Bread',
    number : 22,
    link: Assets.images.bread.path
  ),
  Category(
    title : 'Sweets',
    number : 56,
    link: Assets.images.sweets.path
  ),
];

List<Categorychild> categoryChildren = [
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.cabbage1.path,
    title: 'Savoy Cabbage',
    price: 1.45,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.path,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.path,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.path,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.keyName,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.path,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.boston.path,
    title: 'Boston Lettuce',
    price: 1.10,
    quantity : 'piece',
    description: 'Bibb lettuce is a medium to large-sized variety that measures about 10 to 15 centimeters wide. It has a round shape with loose, wavy, cupped leaves that have a slightly shriveled appearance and a thin, soft texture. The broad, soft outer leaves are loose and frilled at the edges, displaying a grassy green hue that transitions to white at the stem of the vegetable. The inner leaves at the center of the lettuce head are more tightly bound and exhibit a yellow-green color. Together, these leaves form a rosette pattern and have a smooth, silky consistency and uniform crunch. Bibb lettuce is tender and crisp with a mildly nutty, buttery, and sweet flavor.',
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.cabbage1.path,
    title: 'Savoy Cabbage',
    price: 1.45,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Vegetables',
    link: Assets.images.purpleCauliflower.path,
    title: 'Purple Cauliflower',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Fruites',
    link: Assets.images.orange1.path,
    title: 'Apple',
    price: 1.10,
    quantity : 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Fruites',
    link: Assets.images.orange1.path,
    title: 'Banana',
    price: 1.45,
    quantity: 'kg',
    description: 'empty'
  ),
  Categorychild(
    parent: 'Fruites',
    link: Assets.images.orange1.path,
    title: 'Orange',
    price: 1.85,
    quantity: 'kg',
    description: 'empty'
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
  Assets.images.boston.path,
  Assets.images.boston1.path,
  Assets.images.boston2.path,
];