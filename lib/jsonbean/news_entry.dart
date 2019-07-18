import 'package:json_annotation/json_annotation.dart';

part 'news_entry.g.dart';


@JsonSerializable()
class NewsEntry extends Object {

  @JsonKey(name: 'error')
  bool error;

  @JsonKey(name: 'results')
  List<Results> results;

  NewsEntry(this.error,this.results,);

  factory NewsEntry.fromJson(Map<String, dynamic> srcJson) => _$NewsEntryFromJson(srcJson);

}


@JsonSerializable()
class Results extends Object {

  @JsonKey(name: '_id')
  String id;

  @JsonKey(name: 'createdAt')
  String createdAt;

  @JsonKey(name: 'desc')
  String desc;

  @JsonKey(name: 'images')
  List<String> images;

  @JsonKey(name: 'publishedAt')
  String publishedAt;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'type')
  String type;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'used')
  bool used;

  @JsonKey(name: 'who')
  String who;

  Results(this.id,this.createdAt,this.desc,this.images,this.publishedAt,this.source,this.type,this.url,this.used,this.who,);

  factory Results.fromJson(Map<String, dynamic> srcJson) => _$ResultsFromJson(srcJson);

}


