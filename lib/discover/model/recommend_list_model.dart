import 'package:json_annotation/json_annotation.dart';

part 'recommend_list_model.g.dart';


@JsonSerializable()
class RecommendListModel extends Object {

  @JsonKey(name: 'hasTaste')
  bool hasTaste;

  @JsonKey(name: 'code')
  int code;

  @JsonKey(name: 'category')
  int category;

  @JsonKey(name: 'result')
  List<RecommendList> recommendList;

  RecommendListModel(this.hasTaste,this.code,this.category,this.recommendList,);

  factory RecommendListModel.fromJson(Map<String, dynamic> srcJson) => _$RecommendListModelFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RecommendListModelToJson(this);

}


@JsonSerializable()
class RecommendList extends Object {

  @JsonKey(name: 'id')
  int id;

  @JsonKey(name: 'type')
  int type;

  @JsonKey(name: 'name')
  String name;

  @JsonKey(name: 'copywriter')
  String copywriter;

  @JsonKey(name: 'picUrl')
  String picUrl;

  @JsonKey(name: 'canDislike')
  bool canDislike;

  @JsonKey(name: 'playCount')
  double playCount;

  @JsonKey(name: 'trackCount')
  int trackCount;

  @JsonKey(name: 'highQuality')
  bool highQuality;

  @JsonKey(name: 'alg')
  String alg;

  RecommendList(this.id,this.type,this.name,this.copywriter,this.picUrl,this.canDislike,this.playCount,this.trackCount,this.highQuality,this.alg,);

  factory RecommendList.fromJson(Map<String, dynamic> srcJson) => _$RecommendListFromJson(srcJson);

  Map<String, dynamic> toJson() => _$RecommendListToJson(this);

}


