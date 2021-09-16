// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_document.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum RoomDocumentKey {
  name,
  description,
  type,
  admin,
  members,
  private,
  created_at,
  deleted_at,
  users,
  last_message,
  image,
  messages,
}

extension RoomDocumentKeyExtension on RoomDocumentKey {
  String get value {
    switch (this) {
      case RoomDocumentKey.name:
        return 'name';
      case RoomDocumentKey.description:
        return 'description';
      case RoomDocumentKey.type:
        return 'type';
      case RoomDocumentKey.admin:
        return 'admin';
      case RoomDocumentKey.members:
        return 'members';
      case RoomDocumentKey.private:
        return 'private';
      case RoomDocumentKey.created_at:
        return 'created_at';
      case RoomDocumentKey.deleted_at:
        return 'deleted_at';
      case RoomDocumentKey.users:
        return 'users';
      case RoomDocumentKey.last_message:
        return 'last_message';
      case RoomDocumentKey.image:
        return 'image';
      case RoomDocumentKey.messages:
        return 'messages';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(RoomDocument doc) {
  final data = <String, dynamic>{};
  Helper.writeNotNull(data, 'name', doc.name);
  Helper.writeNotNull(data, 'description', doc.description);
  Helper.writeNotNull(data, 'type', doc.type);
  Helper.writeNotNull(data, 'admin', doc.admin);
  Helper.writeNotNull(data, 'members', doc.members);
  Helper.writeNotNull(data, 'private', doc.private);
  Helper.writeNotNull(data, 'created_at', doc.created_at);
  Helper.writeNotNull(data, 'deleted_at', doc.deleted_at);

  Helper.writeModelListNotNull(data, 'users', doc.users);
  Helper.writeModelNotNull(data, 'last_message', doc.last_message);

  Helper.writeStorageNotNull(data, 'image', doc.image, isSetNull: true);

  return data;
}

/// For load data
void _$fromData(RoomDocument doc, Map<String, dynamic> data) {
  doc.name = Helper.valueFromKey<String?>(data, 'name', defaultValue: null);
  doc.description =
      Helper.valueFromKey<String?>(data, 'description', defaultValue: null);
  doc.type = Helper.valueFromKey<String?>(data, 'type', defaultValue: null);
  doc.admin = Helper.valueFromKey<int?>(data, 'admin', defaultValue: null);
  doc.members = Helper.valueListFromKey<int>(data, 'members');
  doc.private = Helper.valueFromKey<bool?>(data, 'private', defaultValue: null);
  if (data['created_at'] is Map) {
    doc.created_at = Helper.timestampFromMap(data, 'created_at');
  } else {
    doc.created_at =
        Helper.valueFromKey<Timestamp?>(data, 'created_at', defaultValue: null);
  }

  if (data['deleted_at'] is Map) {
    doc.deleted_at = Helper.timestampFromMap(data, 'deleted_at');
  } else {
    doc.deleted_at =
        Helper.valueFromKey<Timestamp?>(data, 'deleted_at', defaultValue: null);
  }

  final _users = Helper.valueMapListFromKey<String, dynamic>(data, 'users');
  if (_users != null) {
    doc.users = _users
        .where((d) => d != null)
        .map((d) => UserModel(values: d))
        .toList();
  } else {
    doc.users = null;
  }

  final _last_message =
      Helper.valueMapFromKey<String, dynamic>(data, 'last_message');
  if (_last_message != null) {
    doc.last_message = MessageModel(values: _last_message);
  } else {
    doc.last_message = null;
  }

  doc.image = Helper.storageFile(data, 'image');
}
