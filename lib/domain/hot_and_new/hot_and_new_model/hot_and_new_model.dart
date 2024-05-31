import 'package:json_annotation/json_annotation.dart';
part 'hot_and_new_model.g.dart';

@JsonSerializable()
class HotAndNewModel {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HotAndNewData> results;

  HotAndNewModel({this.page, this.results = const []});

  factory HotAndNewModel.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewModelToJson(this);
}

@JsonSerializable()
class HotAndNewData {
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'name')
  String? originalTitle;
  @JsonKey(name: 'overview')
  String? overview;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'title')
  String? title;
  @JsonKey(name: 'release_date')
  String? releaseDate;
  @JsonKey(name: 'first_air_date')
  String? firstAirDate;

  HotAndNewData({
    this.backdropPath,
    this.id,
    this.originalTitle,
    this.overview,
    this.posterPath,
    this.title,
    this.releaseDate,
  });

  factory HotAndNewData.fromJson(Map<String, dynamic> json) {
    return _$HotAndNewDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HotAndNewDataToJson(this);
}
