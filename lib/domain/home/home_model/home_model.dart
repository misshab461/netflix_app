import 'package:json_annotation/json_annotation.dart';
part 'home_model.g.dart';

@JsonSerializable()
class HomeModel {
  @JsonKey(name: 'page')
  int? page;

  @JsonKey(name: 'results')
  List<HomeModelData>? results;

  HomeModel({this.page, this.results});

  factory HomeModel.fromJson(Map<String, dynamic> json) {
    return _$HomeModelFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelToJson(this);
}

@JsonSerializable()
class HomeModelData {
  @JsonKey(name: 'id')
  int? id;
  @JsonKey(name: 'original_title')
  String? originalTitle;
  @JsonKey(name: 'poster_path')
  String? posterPath;
  @JsonKey(name: 'backdrop_path')
  String? backdropPath;

  HomeModelData({
    this.id,
    this.originalTitle,
    this.posterPath,
    this.backdropPath,
  });

  factory HomeModelData.fromJson(Map<String, dynamic> json) {
    return _$HomeModelDataFromJson(json);
  }

  Map<String, dynamic> toJson() => _$HomeModelDataToJson(this);
}
