// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_document.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum UserDocumentKey {
  uid,
  name,
  email,
  avatar,
  hobby,
  is_online,
  notify,
  last_active,
}

extension UserDocumentKeyExtension on UserDocumentKey {
  String get value {
    switch (this) {
      case UserDocumentKey.uid:
        return 'uid';
      case UserDocumentKey.name:
        return 'name';
      case UserDocumentKey.email:
        return 'email';
      case UserDocumentKey.avatar:
        return 'avatar';
      case UserDocumentKey.hobby:
        return 'hobby';
      case UserDocumentKey.is_online:
        return 'is_online';
      case UserDocumentKey.notify:
        return 'notify';
      case UserDocumentKey.last_active:
        return 'last_active';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(UserDocument doc) {
  final data = <String, dynamic>{};
  Helper.writeNotNull(data, 'uid', doc.uid);
  Helper.writeNotNull(data, 'name', doc.name);
  Helper.writeNotNull(data, 'email', doc.email);
  Helper.writeNotNull(data, 'avatar', doc.avatar);
  Helper.writeNotNull(data, 'hobby', doc.hobby);
  Helper.writeNotNull(data, 'is_online', doc.is_online);
  Helper.writeNotNull(data, 'notify', doc.notify);
  Helper.writeNotNull(data, 'last_active', doc.last_active);

  return data;
}

/// For load data
void _$fromData(UserDocument doc, Map<String, dynamic> data) {
  doc.uid = Helper.valueFromKey<int?>(data, 'uid', defaultValue: null);
  doc.name = Helper.valueFromKey<String?>(data, 'name', defaultValue: null);
  doc.email = Helper.valueFromKey<String?>(data, 'email', defaultValue: null);
  doc.avatar = Helper.valueFromKey<String?>(data, 'avatar', defaultValue: null);
  doc.hobby = Helper.valueFromKey<int?>(data, 'hobby', defaultValue: null);
  doc.is_online =
      Helper.valueFromKey<bool?>(data, 'is_online', defaultValue: null);
  doc.notify = Helper.valueFromKey<String?>(data, 'notify', defaultValue: null);
  if (data['last_active'] is Map) {
    doc.last_active = Helper.timestampFromMap(data, 'last_active');
  } else {
    doc.last_active = Helper.valueFromKey<Timestamp?>(data, 'last_active',
        defaultValue: null);
  }
}
