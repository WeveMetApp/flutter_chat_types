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
    );

Map<String, dynamic> _$RoomUserToJson(RoomUser instance) => <String, dynamic>{
      'userId': instance.userId,
      'isBlockedOtherUser': instance.isBlockedOtherUser,
      'unreadMsgCounter': instance.unreadMsgCounter,
      'isLeftRoom': instance.isLeftRoom,
    };
