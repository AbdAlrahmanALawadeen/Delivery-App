import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_child.freezed.dart';
part 'category_child.g.dart';

@freezed
class Categorychild with _$Categorychild {
  const factory Categorychild({
    required String title,
    required double price,
    required String link,
    required String parent,
    required String quantity,
    required String description,
  }) = _Categorychild;

  factory Categorychild.fromJson(Map<String, dynamic> json) =>
      _$CategorychildFromJson(json);
}
