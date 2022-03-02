import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_model.g.dart';

@JsonSerializable()
class SearchModel {
  final String name;
  final String region;
  final String country;

  SearchModel({
    required this.name,
    required this.country,
    required this.region,
  });

  factory SearchModel.fromJson(Map<String, dynamic> json) =>
      _$SearchModelFromJson(json);
  Map<String, dynamic> toJson() => _$SearchModelToJson(this);
}
