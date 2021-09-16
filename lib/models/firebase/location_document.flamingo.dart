// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_document.dart';

// **************************************************************************
// FieldValueGenerator
// **************************************************************************

/// Field value key
enum LocationDocumentKey {
  uid,
  location,
  postal_code,
  sub_admin_area,
  sub_locality,
  admin_area,
}

extension LocationDocumentKeyExtension on LocationDocumentKey {
  String get value {
    switch (this) {
      case LocationDocumentKey.uid:
        return 'uid';
      case LocationDocumentKey.location:
        return 'location';
      case LocationDocumentKey.postal_code:
        return 'postal_code';
      case LocationDocumentKey.sub_admin_area:
        return 'sub_admin_area';
      case LocationDocumentKey.sub_locality:
        return 'sub_locality';
      case LocationDocumentKey.admin_area:
        return 'admin_area';
      default:
        throw Exception('Invalid data key.');
    }
  }
}

/// For save data
Map<String, dynamic> _$toData(LocationDocument doc) {
  final data = <String, dynamic>{};
  Helper.writeNotNull(data, 'uid', doc.uid);
  Helper.writeNotNull(data, 'location', doc.location);
  Helper.writeNotNull(data, 'postal_code', doc.postal_code);
  Helper.writeNotNull(data, 'sub_admin_area', doc.sub_admin_area);
  Helper.writeNotNull(data, 'sub_locality', doc.sub_locality);
  Helper.writeNotNull(data, 'admin_area', doc.admin_area);

  return data;
}

/// For load data
void _$fromData(LocationDocument doc, Map<String, dynamic> data) {
  doc.uid = Helper.valueFromKey<int?>(data, 'uid', defaultValue: null);
  doc.location =
      Helper.valueFromKey<GeoPoint?>(data, 'location', defaultValue: null);
  doc.postal_code =
      Helper.valueFromKey<String?>(data, 'postal_code', defaultValue: null);
  doc.sub_admin_area =
      Helper.valueFromKey<String?>(data, 'sub_admin_area', defaultValue: null);
  doc.sub_locality =
      Helper.valueFromKey<String?>(data, 'sub_locality', defaultValue: null);
  doc.admin_area =
      Helper.valueFromKey<String?>(data, 'admin_area', defaultValue: null);
}
