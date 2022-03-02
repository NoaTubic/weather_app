part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  factory SearchState(
      {bool? isLoading,
      List<SearchEntity>? searchEntity,
      Failure? failure}) = _SearchState;

  factory SearchState.initial() => SearchState(
        isLoading: false,
        searchEntity: [],
      );

  factory SearchState.error({required Failure failure}) => SearchState(
        failure: failure,
      );
}
