// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_model.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum MessageModelKey {
  id,
  body,
  type,
  sender,
  is_read,
  created_at,
  deleted_at,

  path,
}

extension MessageModelKeyExtension on MessageModelKey {
  String get value {
    switch (this) {
      case MessageModelKey.id:
        return 'id';
      case MessageModelKey.body:
        return 'body';
      case MessageModelKey.type:
        return 'type';
      case MessageModelKey.sender:
        return 'sender';
      case MessageModelKey.is_read:
        return 'is_read';
      case MessageModelKey.created_at:
        return 'created_at';
      case MessageModelKey.deleted_at:
        return 'deleted_at';
      case MessageModelKey.path:
        return 'path';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(MessageModel doc) {
  final data = <String, dynamic>{};
  Helper.writeNotNull(data, 'id', doc.id);
  Helper.writeNotNull(data, 'body', doc.body);
  Helper.writeNotNull(data, 'type', doc.type);
  Helper.writeNotNull(data, 'sender', doc.sender);
  Helper.writeNotNull(data, 'is_read', doc.is_read);
  Helper.writeNotNull(data, 'created_at', doc.created_at);
  Helper.writeNotNull(data, 'deleted_at', doc.deleted_at);

  Helper.writeStorageNotNull(data, 'path', doc.path, isSetNull: true);

  return data;
}

/// For load data
void _$fromData(MessageModel doc, Map<String, dynamic> data) {
  doc.id = Helper.valueFromKey<String?>(data, 'id', defaultValue: null);
  doc.body = Helper.valueFromKey<String?>(data, 'body', defaultValue: null);
  doc.type = Helper.valueFromKey<String?>(data, 'type', defaultValue: null);
  doc.sender = Helper.valueFromKey<int?>(data, 'sender', defaultValue: null);
  doc.is_read = Helper.valueListFromKey<int>(data, 'is_read');
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

  doc.path = Helper.storageFile(data, 'path');
}
