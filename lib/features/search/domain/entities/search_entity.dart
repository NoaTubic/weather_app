import 'package:equatable/equatable.dart';
import 'package:weather_app/features/search/data/models/search_model.dart';

class SearchEntity extends Equatable {
  final String name;
  final String region;
  final String country;

  String get fullName => '$name\n$region\n$country';

  const SearchEntity({
    required this.name,
    required this.country,
    required this.region,
  });

  factory SearchEntity.fromModel(SearchModel model) {
    return SearchEntity(
        name: model.name, region: model.region, country: model.country);
  }

  @override
  List<Object?> get props => [name, region, country];
}
