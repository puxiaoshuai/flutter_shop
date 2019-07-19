import 'package:json_annotation/json_annotation.dart'; 
  
part 'hot_entry.g.dart';


@JsonSerializable()
  class HotEntry extends Object {

  @JsonKey(name: 'T1414142214384')
  List<HotBean> hotlist;

  HotEntry(this.hotlist,);

  factory HotEntry.fromJson(Map<String, dynamic> srcJson) => _$HotEntryFromJson(srcJson);

}

  
@JsonSerializable()
  class HotBean extends Object {

  @JsonKey(name: 'template')
  String template;

  @JsonKey(name: 'lmodify')
  String lmodify;

  @JsonKey(name: 'source')
  String source;

  @JsonKey(name: 'postid')
  String postid;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'mtime')
  String mtime;

  @JsonKey(name: 'hasImg')
  int hasImg;

  @JsonKey(name: 'topic_background')
  String topicBackground;

  @JsonKey(name: 'digest')
  String digest;

  @JsonKey(name: 'boardid')
  String boardid;

  @JsonKey(name: 'alias')
  String alias;

  @JsonKey(name: 'hasAD')
  int hasAD;

  @JsonKey(name: 'imgsrc')
  String imgsrc;

  @JsonKey(name: 'ptime')
  String ptime;

  @JsonKey(name: 'daynum')
  String daynum;

  @JsonKey(name: 'hasHead')
  int hasHead;

  @JsonKey(name: 'order')
  int order;

  @JsonKey(name: 'votecount')
  int votecount;

  @JsonKey(name: 'hasCover')
  bool hasCover;

  @JsonKey(name: 'docid')
  String docid;

  @JsonKey(name: 'tname')
  String tname;

  @JsonKey(name: 'url_3w')
  String url3w;

  @JsonKey(name: 'priority')
  int priority;

  @JsonKey(name: 'url')
  String url;

  @JsonKey(name: 'ename')
  String ename;

  @JsonKey(name: 'replyCount')
  int replyCount;

  @JsonKey(name: 'ltitle')
  String ltitle;

  @JsonKey(name: 'hasIcon')
  bool hasIcon;

  @JsonKey(name: 'subtitle')
  String subtitle;

  @JsonKey(name: 'cid')
  String cid;

  HotBean(this.template,this.lmodify,this.source,this.postid,this.title,this.mtime,this.hasImg,this.topicBackground,this.digest,this.boardid,this.alias,this.hasAD,this.imgsrc,this.ptime,this.daynum,this.hasHead,this.order,this.votecount,this.hasCover,this.docid,this.tname,this.url3w,this.priority,this.url,this.ename,this.replyCount,this.ltitle,this.hasIcon,this.subtitle,this.cid,);

  factory HotBean.fromJson(Map<String, dynamic> srcJson) => _$HotBeanFromJson(srcJson);

}

  
