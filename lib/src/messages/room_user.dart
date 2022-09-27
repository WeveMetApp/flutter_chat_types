import 'package:json_annotation/json_annotation.dart';

part 'room_user.g.dart';

@JsonSerializable()
class RoomUser {
  RoomUser({
    required this.userId,
    required this.isBlockedOtherUser,
    required this.unreadMsgCounter,
    required this.isLeftRoom,
  });

  factory RoomUser.fromJson(Map<String, dynamic> data) => _$RoomUserFromJson(data);

  final String userId;
  final bool isBlockedOtherUser;
  final int unreadMsgCounter;
  final bool isLeftRoom;

  Map<String, dynamic> toJson() => _$RoomUserToJson(this);
}
