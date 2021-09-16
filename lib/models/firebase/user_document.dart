import 'package:flamingo/flamingo.dart';
import 'package:flamingo_annotation/flamingo_annotation.dart';

part 'user_document.flamingo.dart';

class UserDocument extends Document<UserDocument> {
  UserDocument({
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
  String? name;
  @Field()
  String? email;
  @Field()
  String? avatar;
  @Field()
  int? hobby;
  @Field()
  bool? is_online;
  @Field()
  String? notify;
  @Field()
  Timestamp? last_active;

  @override
  Map<String, dynamic> toData() => _$toData(this);

  @override
  void fromData(Map<String, dynamic> data) => _$fromData(this, data);
}
