import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.freezed.dart';
part 'search.g.dart';

@freezed
class Search with _$Search {
  const factory Search({
    @JsonKey(name: 'title') required String title,
    @JsonKey(name: 'poster_path') required String posterPath,
  }) = _Search;

  factory Search.fromJson(Map<String, dynamic> json) => _$SearchFromJson(json);
}
