// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'recommend_list_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RecommendListModel _$RecommendListModelFromJson(Map<String, dynamic> json) {
  return RecommendListModel(
      json['hasTaste'] as bool,
      json['code'] as int,
      json['category'] as int,
      (json['result'] as List)
          ?.map((e) => e == null
              ? null
              : RecommendList.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

Map<String, dynamic> _$RecommendListModelToJson(RecommendListModel instance) =>
    <String, dynamic>{
      'hasTaste': instance.hasTaste,
      'code': instance.code,
      'category': instance.category,
      'result': instance.recommendList
    };

RecommendList _$RecommendListFromJson(Map<String, dynamic> json) {
  return RecommendList(
      json['id'] as int,
      json['type'] as int,
      json['name'] as String,
      json['copywriter'] as String,
      json['picUrl'] as String,
      json['canDislike'] as bool,
      (json['playCount'] as num)?.toDouble(),
      json['trackCount'] as int,
      json['highQuality'] as bool,
      json['alg'] as String);
}

Map<String, dynamic> _$RecommendListToJson(RecommendList instance) =>
    <String, dynamic>{
      'id': instance.id,
      'type': instance.type,
      'name': instance.name,
      'copywriter': instance.copywriter,
      'picUrl': instance.picUrl,
      'canDislike': instance.canDislike,
      'playCount': instance.playCount,
      'trackCount': instance.trackCount,
      'highQuality': instance.highQuality,
      'alg': instance.alg
    };
