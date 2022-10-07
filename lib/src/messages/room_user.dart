import 'package:json_annotation/json_annotation.dart';

part 'room_user.g.dart';

@JsonSerializable()
class RoomUser {
  RoomUser({
    required this.userId,
    required this.isBlockedOtherUser,
    required this.unreadMsgCounter,
    required this.isLeftRoom,
    this.isLeftRoomDate,
    required this.isAnonymous,
    this.ispinnedTop,
    this.pinnedTopDate,
  });

  factory RoomUser.fromJson(Map<String, dynamic> data) => _$RoomUserFromJson(data);

  final String userId;
  bool isBlockedOtherUser;
  int unreadMsgCounter;
  bool isLeftRoom;
  int? isLeftRoomDate;
  bool isAnonymous;
  bool? ispinnedTop;
  int? pinnedTopDate;

  Map<String, dynamic> toJson() => _$RoomUserToJson(this);
}
