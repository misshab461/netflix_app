// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'downloads_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DownloadsImpl _$$DownloadsImplFromJson(Map<String, dynamic> json) =>
    _$DownloadsImpl(
      posterPath: json['poster_path'] as String,
      movieName: json['title'] as String,
    );

Map<String, dynamic> _$$DownloadsImplToJson(_$DownloadsImpl instance) =>
    <String, dynamic>{
      'poster_path': instance.posterPath,
      'title': instance.movieName,
    };
