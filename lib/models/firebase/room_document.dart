import 'package:flamingo_annotation/flamingo_annotation.dart';
import 'package:flamingo/flamingo.dart';
import 'package:hulahob_app_nullsafety/models/firebase/message_document.dart';
import 'package:hulahob_app_nullsafety/models/firebase/message_model.dart';
import 'package:hulahob_app_nullsafety/models/firebase/user_model.dart';

part 'room_document.flamingo.dart';

class RoomDocument extends Document<RoomDocument> {
  RoomDocument({
    String? id,
    DocumentSnapshot<Map<String, dynamic>>? snapshot,
    Map<String, dynamic>? values,
    CollectionReference<Map<String, dynamic>>? collectionRef,
  }) : super(
            id: id,
            collectionRef: collectionRef,
            snapshot: snapshot,
            values: values) {
    messages = Collection(this, RoomDocumentKey.messages.value);
  }

  @Field()
  String? name;
  @Field()
  String? description;
  @StorageField()
  StorageFile? image;
  @Field()
  String? type;
  @Field()
  int? admin;
  @ModelField()
  List<UserModel>? users;
  @ModelField()
  MessageModel? last_message;
  @Field()
  List<int>? members;
  @Field()
  bool? private;
  @Field()
  Timestamp? created_at;
  @Field()
  Timestamp? deleted_at;
  @SubCollection()
  Collection<MessageDocument>? messages;

  @override
  Map<String, dynamic> toData() => _$toData(this);

  @override
  void fromData(Map<String, dynamic> data) => _$fromData(this, data);
}
