// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_document.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum MessageDocumentKey {
  body,
  type,
  sender,
  is_read,
  created_at,
  deleted_at,

  path,
}

extension MessageDocumentKeyExtension on MessageDocumentKey {
  String get value {
    switch (this) {
      case MessageDocumentKey.body:
        return 'body';
      case MessageDocumentKey.type:
        return 'type';
      case MessageDocumentKey.sender:
        return 'sender';
      case MessageDocumentKey.is_read:
        return 'is_read';
      case MessageDocumentKey.created_at:
        return 'created_at';
      case MessageDocumentKey.deleted_at:
        return 'deleted_at';
      case MessageDocumentKey.path:
        return 'path';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(MessageDocument doc) {
  final data = <String, dynamic>{};
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
void _$fromData(MessageDocument doc, Map<String, dynamic> data) {
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
