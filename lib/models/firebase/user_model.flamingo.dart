// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum UserModelKey {
  uid,
  name,
  email,
  avatar,
  is_online,
  last_active,
}

extension UserModelKeyExtension on UserModelKey {
  String get value {
    switch (this) {
      case UserModelKey.uid:
        return 'uid';
      case UserModelKey.name:
        return 'name';
      case UserModelKey.email:
        return 'email';
      case UserModelKey.avatar:
        return 'avatar';
      case UserModelKey.is_online:
        return 'is_online';
      case UserModelKey.last_active:
        return 'last_active';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(UserModel doc) {
  final data = <String, dynamic>{};
  Helper.writeNotNull(data, 'uid', doc.uid);
  Helper.writeNotNull(data, 'name', doc.name);
  Helper.writeNotNull(data, 'email', doc.email);
  Helper.writeNotNull(data, 'avatar', doc.avatar);
  Helper.writeNotNull(data, 'is_online', doc.is_online);
  Helper.writeNotNull(data, 'last_active', doc.last_active);

  return data;
}

/// For load data
void _$fromData(UserModel doc, Map<String, dynamic> data) {
  doc.uid = Helper.valueFromKey<int?>(data, 'uid', defaultValue: null);
  doc.name = Helper.valueFromKey<String?>(data, 'name', defaultValue: null);
  doc.email = Helper.valueFromKey<String?>(data, 'email', defaultValue: null);
  doc.avatar = Helper.valueFromKey<String?>(data, 'avatar', defaultValue: null);
  doc.is_online =
      Helper.valueFromKey<bool?>(data, 'is_online', defaultValue: null);
  if (data['last_active'] is Map) {
    doc.last_active = Helper.timestampFromMap(data, 'last_active');
  } else {
    doc.last_active = Helper.valueFromKey<Timestamp?>(data, 'last_active',
        defaultValue: null);
  }
}
