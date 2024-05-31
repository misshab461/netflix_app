// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_and_new_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotAndNewModel _$HotAndNewModelFromJson(Map<String, dynamic> json) =>
    HotAndNewModel(
      page: (json['page'] as num?)?.toInt(),
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => HotAndNewData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$HotAndNewModelToJson(HotAndNewModel instance) =>
    <String, dynamic>{
      'page': instance.page,
      'results': instance.results,
    };

HotAndNewData _$HotAndNewDataFromJson(Map<String, dynamic> json) =>
    HotAndNewData(
      backdropPath: json['backdrop_path'] as String?,
      id: (json['id'] as num?)?.toInt(),
      originalTitle: json['name'] as String?,
      overview: json['overview'] as String?,
      posterPath: json['poster_path'] as String?,
      title: json['title'] as String?,
      releaseDate: json['release_date'] as String?,
    )..firstAirDate = json['first_air_date'] as String?;

Map<String, dynamic> _$HotAndNewDataToJson(HotAndNewData instance) =>
    <String, dynamic>{
      'backdrop_path': instance.backdropPath,
      'id': instance.id,
      'name': instance.originalTitle,
      'overview': instance.overview,
      'poster_path': instance.posterPath,
      'title': instance.title,
      'release_date': instance.releaseDate,
      'first_air_date': instance.firstAirDate,
    };
