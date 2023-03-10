// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RoomUser _$RoomUserFromJson(Map<String, dynamic> json) => RoomUser(
      userId: json['userId'] as String,
      isBlockedOtherUser: json['isBlockedOtherUser'] as bool,
      unreadMsgCounter: json['unreadMsgCounter'] as int,
      isLeftRoom: json['isLeftRoom'] as bool,
      isLeftRoomDate: json['isLeftRoomDate'] as int?,
      isAnonymous: json['isAnonymous'] as bool,
      ispinnedTop: json['ispinnedTop'] as bool?,
      pinnedTopDate: json['pinnedTopDate'] as int?,
    );

Map<String, dynamic> _$RoomUserToJson(RoomUser instance) {
  final val = <String, dynamic>{
    'userId': instance.userId,
    'isBlockedOtherUser': instance.isBlockedOtherUser,
    'unreadMsgCounter': instance.unreadMsgCounter,
    'isLeftRoom': instance.isLeftRoom,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('isLeftRoomDate', instance.isLeftRoomDate);
  val['isAnonymous'] = instance.isAnonymous;
  writeNotNull('ispinnedTop', instance.ispinnedTop);
  writeNotNull('pinnedTopDate', instance.pinnedTopDate);
  return val;
}
