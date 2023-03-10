import 'package:equatable/equatable.dart';
import 'package:flutter_chat_types/src/messages/room_user.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meta/meta.dart';

import 'message.dart';
import 'user.dart';

part 'room.g.dart';

/// All possible room types.
enum RoomType { channel, direct, group }

/// A class that represents a room where 2 or more participants can chat.
@JsonSerializable()
@immutable
abstract class Room extends Equatable {
  /// Creates a [Room].
  const Room._({
    this.createdAt,
    required this.id,
    this.imageUrl,
    this.lastMessages,
    this.metadata,
    this.name,
    required this.type,
    this.updatedAt,
    required this.users,
    required this.userIds,
    this.lastMessage,
    required this.roomUsers,
    this.isAlwaysPinnedTop,
  });

  const factory Room({
    int? createdAt,
    required String id,
    String? imageUrl,
    List<Message>? lastMessages,
    Map<String, dynamic>? metadata,
    String? name,
    required RoomType? type,
    int? updatedAt,
    required List<User> users,
    required List<String> userIds,
    String? lastMessage,
    required List<RoomUser> roomUsers,
    bool? isAlwaysPinnedTop,
  }) = _Room;

  /// Creates room from a map (decoded JSON).
  factory Room.fromJson(Map<String, dynamic> json) => _$RoomFromJson(json);

  final bool? isAlwaysPinnedTop;

  final List<RoomUser> roomUsers;

  /// sajad unread messages counter. has only two indexes.
  /// index 0: the first user in userIds list (from this room)
  /// index 1: the second user in userIds list (from this room)
  // final List<int> unreadMsgCounter;

  /// [userLeftRoom]
  /// index 0: the first user in userIds list (from this room)
  /// index 1: the second user in userIds list (from this room)
  // final List<bool> userLeftRoom;

  /// [userBlocked]
  /// index 0: the first user in userIds list (from this room)
  /// index 1: the second user in userIds list (from this room)
  // final List<bool> userBlocked;

  /// [userIds]
  /// index 0: the first user in userIds list (from this room)
  /// index 1: the second user in userIds list (from this room)
  final List<String> userIds;

  /// sajad: if true, the room is pinned to the top of the list
  // final bool? isPinnedTop;
  // final int? pinnedTopDate;

  /// Created room timestamp, in ms.
  final int? createdAt;

  /// Sajad: last message sent in this room
  final String? lastMessage;

  /// Room's unique ID.
  final String id;

  /// Room's image. In case of the [RoomType.direct] - avatar of the second person,
  /// otherwise a custom image [RoomType.group].
  final String? imageUrl;

  /// List of last messages this room has received.
  final List<Message>? lastMessages;

  /// Additional custom metadata or attributes related to the room.
  final Map<String, dynamic>? metadata;

  /// Room's name. In case of the [RoomType.direct] - name of the second person,
  /// otherwise a custom name [RoomType.group].
  final String? name;

  /// [RoomType].
  final RoomType? type;

  /// Updated room timestamp, in ms.
  final int? updatedAt;

  /// List of users which are in the room.
  final List<User> users;

  /// Equatable props.
  @override
  List<Object?> get props => [
        createdAt,
        id,
        imageUrl,
        lastMessages,
        metadata,
        name,
        type,
        updatedAt,
        users,
        userIds,
        lastMessage,
        roomUsers,
        isAlwaysPinnedTop,
      ];

  /// Creates a copy of the room with an updated data.
  /// [imageUrl], [name] and [updatedAt] with null values will nullify existing values
  /// [metadata] with null value will nullify existing metadata, otherwise
  /// both metadatas will be merged into one Map, where keys from a passed
  /// metadata will overwite keys from the previous one.
  /// [type] and [users] with null values will be overwritten by previous values.
  Room copyWith({
    int? createdAt,
    String? id,
    String? imageUrl,
    List<Message>? lastMessages,
    Map<String, dynamic>? metadata,
    String? name,
    RoomType? type,
    int? updatedAt,
    List<User>? users,
    List<String> userIds,
    String? lastMessage,
    List<RoomUser>? roomUsers,
    bool? isAlwaysPinnedTop,
  });

  /// Converts room to the map representation, encodable to JSON.
  Map<String, dynamic> toJson() => _$RoomToJson(this);
}

/// A utility class to enable better copyWith.
class _Room extends Room {
  const _Room({
    super.createdAt,
    required super.id,
    super.imageUrl,
    super.lastMessages,
    super.metadata,
    super.name,
    required super.type,
    super.updatedAt,
    required super.users,
    // required super.unreadMsgCounter,
    // super.isPinnedTop,
    // super.pinnedTopDate,
    required super.userIds,
    // required super.userLeftRoom,
    super.lastMessage,
    // required super.userBlocked,
    required super.roomUsers,
    super.isAlwaysPinnedTop,
  }) : super._();

  @override
  Room copyWith({
    dynamic createdAt = _Unset,
    String? id,
    dynamic imageUrl = _Unset,
    dynamic lastMessages = _Unset,
    dynamic metadata = _Unset,
    dynamic name = _Unset,
    dynamic type = _Unset,
    dynamic updatedAt = _Unset,
    List<User>? users,
    // dynamic unreadMsgCounter = _Unset,
    // dynamic isPinnedTop = _Unset,
    // dynamic pinnedTopDate = _Unset,
    dynamic userIds = _Unset,
    // dynamic userLeftRoom = _Unset,
    dynamic lastMessage = _Unset,
    // dynamic userBlocked = _Unset,
    List<RoomUser>? roomUsers,
    dynamic isAlwaysPinnedTop = _Unset,
  }) =>
      _Room(
        createdAt: createdAt == _Unset ? this.createdAt : createdAt as int?,
        id: id ?? this.id,
        imageUrl: imageUrl == _Unset ? this.imageUrl : imageUrl as String?,
        lastMessages: lastMessages == _Unset ? this.lastMessages : lastMessages as List<Message>?,
        metadata: metadata == _Unset ? this.metadata : metadata as Map<String, dynamic>?,
        name: name == _Unset ? this.name : name as String?,
        type: type == _Unset ? this.type : type as RoomType?,
        updatedAt: updatedAt == _Unset ? this.updatedAt : updatedAt as int?,
        users: users ?? this.users,
        // unreadMsgCounter: unreadMsgCounter == _Unset ? this.unreadMsgCounter : unreadMsgCounter as List<int>,
        // isPinnedTop: isPinnedTop == _Unset ? this.isPinnedTop : isPinnedTop as bool?,
        // pinnedTopDate: pinnedTopDate == _Unset ? this.pinnedTopDate : pinnedTopDate as int?,
        userIds: userIds == _Unset ? this.userIds : userIds as List<String>,
        // userLeftRoom: userLeftRoom == _Unset ? this.userLeftRoom : userLeftRoom as List<bool>,
        lastMessage: lastMessage == _Unset ? this.lastMessage : lastMessage as String?,
        // userBlocked: userBlocked == _Unset ? this.userBlocked : userBlocked as List<bool>,
        roomUsers: roomUsers ?? this.roomUsers,
        isAlwaysPinnedTop: isAlwaysPinnedTop == _Unset ? this.isAlwaysPinnedTop : isAlwaysPinnedTop as bool?,
      );
}

class _Unset {}
