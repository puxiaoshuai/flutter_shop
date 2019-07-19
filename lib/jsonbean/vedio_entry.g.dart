// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vedio_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

VedioEntry _$VedioEntryFromJson(Map<String, dynamic> json) {
  return VedioEntry((json['视频'] as List)
      ?.map((e) =>
          e == null ? null : VedioItem.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$VedioEntryToJson(VedioEntry instance) =>
    <String, dynamic>{'视频': instance.vedioitem};

VedioItem _$VedioItemFromJson(Map<String, dynamic> json) {
  return VedioItem(
      json['prompt'] as String,
      json['replyCount'] as int,
      json['videosource'] as String,
      json['title'] as String,
      json['playCount'] as int,
      json['voteCount'] as int,
      json['description'] as String,
      json['replyid'] as String,
      json['mp4_url'] as String,
      json['mp4Hd_url'] as String,
      json['m3u8_url'] as String,
      json['m3u8Hd_url'] as String,
      json['length'] as int,
      json['playersize'] as int,
      json['vid'] as String,
      json['ptime'] as String,
      json['replyBoard'] as String,
      json['danmu'] as int,
      json['topicDesc'] as String,
      json['topicSid'] as String,
      json['cover'] as String,
      json['topicName'] as String,
      json['videoTopic'] == null
          ? null
          : VideoTopic.fromJson(json['videoTopic'] as Map<String, dynamic>),
      json['program'] as String,
      json['sizeSD'] as int,
      json['sizeHD'] as int,
      json['sizeSHD'] as int,
      (json['unlikeReason'] as List)?.map((e) => e as String)?.toList(),
      json['autoPlay'] as int,
      json['category'] as String,
      json['accoutClassify'] as int,
      (json['videoRatio'] as num)?.toDouble(),
      json['covCLevel'] as int,
      json['cntCLevel'] as int,
      json['recomCount'] as int,
      json['shortV'] as bool,
      json['firstFrameImg'] as String,
      json['fullSizeImg'] as String,
      json['reqId'] as String,
      json['videoHideTitle'] as int);
}

Map<String, dynamic> _$VedioItemToJson(VedioItem instance) => <String, dynamic>{
      'prompt': instance.prompt,
      'replyCount': instance.replyCount,
      'videosource': instance.videosource,
      'title': instance.title,
      'playCount': instance.playCount,
      'voteCount': instance.voteCount,
      'description': instance.description,
      'replyid': instance.replyid,
      'mp4_url': instance.mp4Url,
      'mp4Hd_url': instance.mp4HdUrl,
      'm3u8_url': instance.m3u8Url,
      'm3u8Hd_url': instance.m3u8HdUrl,
      'length': instance.length,
      'playersize': instance.playersize,
      'vid': instance.vid,
      'ptime': instance.ptime,
      'replyBoard': instance.replyBoard,
      'danmu': instance.danmu,
      'topicDesc': instance.topicDesc,
      'topicSid': instance.topicSid,
      'cover': instance.cover,
      'topicName': instance.topicName,
      'videoTopic': instance.videoTopic,
      'program': instance.program,
      'sizeSD': instance.sizeSD,
      'sizeHD': instance.sizeHD,
      'sizeSHD': instance.sizeSHD,
      'unlikeReason': instance.unlikeReason,
      'autoPlay': instance.autoPlay,
      'category': instance.category,
      'accoutClassify': instance.accoutClassify,
      'videoRatio': instance.videoRatio,
      'covCLevel': instance.covCLevel,
      'cntCLevel': instance.cntCLevel,
      'recomCount': instance.recomCount,
      'shortV': instance.shortV,
      'firstFrameImg': instance.firstFrameImg,
      'fullSizeImg': instance.fullSizeImg,
      'reqId': instance.reqId,
      'videoHideTitle': instance.videoHideTitle
    };

VideoTopic _$VideoTopicFromJson(Map<String, dynamic> json) {
  return VideoTopic(
      json['alias'] as String,
      json['tname'] as String,
      json['ename'] as String,
      json['tid'] as String,
      json['topic_icons'] as String,
      json['followed'] as bool);
}

Map<String, dynamic> _$VideoTopicToJson(VideoTopic instance) =>
    <String, dynamic>{
      'alias': instance.alias,
      'tname': instance.tname,
      'ename': instance.ename,
      'tid': instance.tid,
      'topic_icons': instance.topicIcons,
      'followed': instance.followed
    };
