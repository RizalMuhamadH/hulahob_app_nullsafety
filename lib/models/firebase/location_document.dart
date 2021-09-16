import 'package:flamingo/flamingo.dart';
import 'package:flamingo_annotation/flamingo_annotation.dart';

part 'location_document.flamingo.dart';

class LocationDocument extends Document<LocationDocument> {
  LocationDocument({
    String? id,
    DocumentSnapshot<Map<String, dynamic>>? snapshot,
    Map<String, dynamic>? values,
    CollectionReference<Map<String, dynamic>>? collectionRef,
  }) : super(
            id: id,
            collectionRef: collectionRef,
            snapshot: snapshot,
            values: values);

  @Field()
  int? uid;
  @Field()
  GeoPoint? location;
  @Field()
  String? postal_code;
  @Field()
  String? sub_admin_area;
  @Field()
  String? sub_locality;
  @Field()
  String? admin_area;

  @override
  Map<String, dynamic> toData() => _$toData(this);

  @override
  void fromData(Map<String, dynamic> data) => _$fromData(this, data);
}
