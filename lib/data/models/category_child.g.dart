// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_child.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CategorychildImpl _$$CategorychildImplFromJson(Map<String, dynamic> json) =>
    _$CategorychildImpl(
      title: json['title'] as String,
      price: (json['price'] as num).toDouble(),
      link: json['link'] as String,
      parent: json['parent'] as String,
      quantity: json['quantity'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CategorychildImplToJson(_$CategorychildImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'price': instance.price,
      'link': instance.link,
      'parent': instance.parent,
      'quantity': instance.quantity,
      'description': instance.description,
    };
