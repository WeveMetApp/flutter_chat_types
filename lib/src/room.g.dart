// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Room _$RoomFromJson(Map<String, dynamic> json) => Room(
      createdAt: json['createdAt'] as int?,
      id: json['id'] as String,
      imageUrl: json['imageUrl'] as String?,
      lastMessages: (json['lastMessages'] as List<dynamic>?)
          ?.map((e) => Message.fromJson(e as Map<String, dynamic>))
          .toList(),
      metadata: json['metadata'] as Map<String, dynamic>?,
      name: json['name'] as String?,
      type: $enumDecodeNullable(_$RoomTypeEnumMap, json['type']),
      updatedAt: json['updatedAt'] as int?,
      users: (json['users'] as List<dynamic>)
          .map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPinnedTop: json['isPinnedTop'] as bool?,
      pinnedTopDate: json['pinnedTopDate'] as int?,
      lastMessage: json['lastMessage'] as String?,
      roomUsers: (json['roomUsers'] as List<dynamic>)
          .map((e) => RoomUser.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$RoomToJson(Room instance) {
  final val = <String, dynamic>{
    'roomUsers': instance.roomUsers.map((e) => e.toJson()).toList(),
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isPinnedTop', instance.isPinnedTop);
  writeNotNull('pinnedTopDate', instance.pinnedTopDate);
  writeNotNull('createdAt', instance.createdAt);
  writeNotNull('lastMessage', instance.lastMessage);
  val['id'] = instance.id;
  writeNotNull('imageUrl', instance.imageUrl);
  writeNotNull(
      'lastMessages', instance.lastMessages?.map((e) => e.toJson()).toList());
  writeNotNull('metadata', instance.metadata);
  writeNotNull('name', instance.name);
  writeNotNull('type', _$RoomTypeEnumMap[instance.type]);
  writeNotNull('updatedAt', instance.updatedAt);
  val['users'] = instance.users.map((e) => e.toJson()).toList();
  return val;
}

const _$RoomTypeEnumMap = {
  RoomType.channel: 'channel',
  RoomType.direct: 'direct',
  RoomType.group: 'group',
};
