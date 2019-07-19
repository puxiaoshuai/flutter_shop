// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hot_entry.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HotEntry _$HotEntryFromJson(Map<String, dynamic> json) {
  return HotEntry((json['T1414142214384'] as List)
      ?.map(
          (e) => e == null ? null : HotBean.fromJson(e as Map<String, dynamic>))
      ?.toList());
}

Map<String, dynamic> _$HotEntryToJson(HotEntry instance) =>
    <String, dynamic>{'T1414142214384': instance.hotlist};

HotBean _$HotBeanFromJson(Map<String, dynamic> json) {
  return HotBean(
      json['template'] as String,
      json['lmodify'] as String,
      json['source'] as String,
      json['postid'] as String,
      json['title'] as String,
      json['mtime'] as String,
      json['hasImg'] as int,
      json['topic_background'] as String,
      json['digest'] as String,
      json['boardid'] as String,
      json['alias'] as String,
      json['hasAD'] as int,
      json['imgsrc'] as String,
      json['ptime'] as String,
      json['daynum'] as String,
      json['hasHead'] as int,
      json['order'] as int,
      json['votecount'] as int,
      json['hasCover'] as bool,
      json['docid'] as String,
      json['tname'] as String,
      json['url_3w'] as String,
      json['priority'] as int,
      json['url'] as String,
      json['ename'] as String,
      json['replyCount'] as int,
      json['ltitle'] as String,
      json['hasIcon'] as bool,
      json['subtitle'] as String,
      json['cid'] as String);
}

Map<String, dynamic> _$HotBeanToJson(HotBean instance) => <String, dynamic>{
      'template': instance.template,
      'lmodify': instance.lmodify,
      'source': instance.source,
      'postid': instance.postid,
      'title': instance.title,
      'mtime': instance.mtime,
      'hasImg': instance.hasImg,
      'topic_background': instance.topicBackground,
      'digest': instance.digest,
      'boardid': instance.boardid,
      'alias': instance.alias,
      'hasAD': instance.hasAD,
      'imgsrc': instance.imgsrc,
      'ptime': instance.ptime,
      'daynum': instance.daynum,
      'hasHead': instance.hasHead,
      'order': instance.order,
      'votecount': instance.votecount,
      'hasCover': instance.hasCover,
      'docid': instance.docid,
      'tname': instance.tname,
      'url_3w': instance.url3w,
      'priority': instance.priority,
      'url': instance.url,
      'ename': instance.ename,
      'replyCount': instance.replyCount,
      'ltitle': instance.ltitle,
      'hasIcon': instance.hasIcon,
      'subtitle': instance.subtitle,
      'cid': instance.cid
    };
