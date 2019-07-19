import 'package:json_annotation/json_annotation.dart'; 
  
part 'vedio_entry.g.dart';


@JsonSerializable()
  class VedioEntry extends Object {

  @JsonKey(name: '视频')
  List<VedioItem> vedioitem;

  VedioEntry(this.vedioitem,);

  factory VedioEntry.fromJson(Map<String, dynamic> srcJson) => _$VedioEntryFromJson(srcJson);

}

  
@JsonSerializable()
  class VedioItem extends Object{

  @JsonKey(name: 'prompt')
  String prompt;

  @JsonKey(name: 'replyCount')
  int replyCount;

  @JsonKey(name: 'videosource')
  String videosource;

  @JsonKey(name: 'title')
  String title;

  @JsonKey(name: 'playCount')
  int playCount;

  @JsonKey(name: 'voteCount')
  int voteCount;

  @JsonKey(name: 'description')
  String description;

  @JsonKey(name: 'replyid')
  String replyid;

  @JsonKey(name: 'mp4_url')
  String mp4Url;

  @JsonKey(name: 'mp4Hd_url')
  String mp4HdUrl;

  @JsonKey(name: 'm3u8_url')
  String m3u8Url;

  @JsonKey(name: 'm3u8Hd_url')
  String m3u8HdUrl;

  @JsonKey(name: 'length')
  int length;

  @JsonKey(name: 'playersize')
  int playersize;

  @JsonKey(name: 'vid')
  String vid;

  @JsonKey(name: 'ptime')
  String ptime;

  @JsonKey(name: 'replyBoard')
  String replyBoard;

  @JsonKey(name: 'danmu')
  int danmu;

  @JsonKey(name: 'topicDesc')
  String topicDesc;

  @JsonKey(name: 'topicSid')
  String topicSid;

  @JsonKey(name: 'cover')
  String cover;

  @JsonKey(name: 'topicName')
  String topicName;

  @JsonKey(name: 'videoTopic')
  VideoTopic videoTopic;

  @JsonKey(name: 'program')
  String program;

  @JsonKey(name: 'sizeSD')
  int sizeSD;

  @JsonKey(name: 'sizeHD')
  int sizeHD;

  @JsonKey(name: 'sizeSHD')
  int sizeSHD;

  @JsonKey(name: 'unlikeReason')
  List<String> unlikeReason;

  @JsonKey(name: 'autoPlay')
  int autoPlay;

  @JsonKey(name: 'category')
  String category;

  @JsonKey(name: 'accoutClassify')
  int accoutClassify;

  @JsonKey(name: 'videoRatio')
  double videoRatio;

  @JsonKey(name: 'covCLevel')
  int covCLevel;

  @JsonKey(name: 'cntCLevel')
  int cntCLevel;

  @JsonKey(name: 'recomCount')
  int recomCount;

  @JsonKey(name: 'shortV')
  bool shortV;

  @JsonKey(name: 'firstFrameImg')
  String firstFrameImg;

  @JsonKey(name: 'fullSizeImg')
  String fullSizeImg;

  @JsonKey(name: 'reqId')
  String reqId;

  @JsonKey(name: 'videoHideTitle')
  int videoHideTitle;

  VedioItem(this.prompt,this.replyCount,this.videosource,this.title,this.playCount,this.voteCount,this.description,this.replyid,this.mp4Url,this.mp4HdUrl,this.m3u8Url,this.m3u8HdUrl,this.length,this.playersize,this.vid,this.ptime,this.replyBoard,this.danmu,this.topicDesc,this.topicSid,this.cover,this.topicName,this.videoTopic,this.program,this.sizeSD,this.sizeHD,this.sizeSHD,this.unlikeReason,this.autoPlay,this.category,this.accoutClassify,this.videoRatio,this.covCLevel,this.cntCLevel,this.recomCount,this.shortV,this.firstFrameImg,this.fullSizeImg,this.reqId,this.videoHideTitle,);

  factory VedioItem.fromJson(Map<String, dynamic> srcJson) => _$VedioItemFromJson(srcJson);

}

  
@JsonSerializable()
  class VideoTopic extends Object {

  @JsonKey(name: 'alias')
  String alias;

  @JsonKey(name: 'tname')
  String tname;

  @JsonKey(name: 'ename')
  String ename;

  @JsonKey(name: 'tid')
  String tid;

  @JsonKey(name: 'topic_icons')
  String topicIcons;

  @JsonKey(name: 'followed')
  bool followed;

  VideoTopic(this.alias,this.tname,this.ename,this.tid,this.topicIcons,this.followed,);

  factory VideoTopic.fromJson(Map<String, dynamic> srcJson) => _$VideoTopicFromJson(srcJson);

}

  
