// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchModel _$SearchModelFromJson(Map<String, dynamic> json) => SearchModel(
      name: json['name'] as String,
      country: json['country'] as String,
      region: json['region'] as String,
    );

Map<String, dynamic> _$SearchModelToJson(SearchModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'region': instance.region,
      'country': instance.country,
    };
