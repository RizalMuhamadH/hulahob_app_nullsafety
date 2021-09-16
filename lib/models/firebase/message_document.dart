import 'package:flamingo_annotation/flamingo_annotation.dart';
import 'package:flamingo/flamingo.dart';

part 'message_document.flamingo.dart';

class MessageDocument extends Document<MessageDocument> {
  MessageDocument({
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
  String? body;
  @StorageField()
  StorageFile? path;
  @Field()
  String? type;
  @Field()
  int? sender;
  @Field()
  List<int>? is_read;
  @Field()
  Timestamp? created_at;
  @Field()
  Timestamp? deleted_at;

  @override
  Map<String, dynamic> toData() => _$toData(this);

  @override
  void fromData(Map<String, dynamic> data) => _$fromData(this, data);
}
