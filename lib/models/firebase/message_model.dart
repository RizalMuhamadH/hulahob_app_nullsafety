import 'package:flamingo_annotation/flamingo_annotation.dart';
import 'package:flamingo/flamingo.dart';

part 'message_model.flamingo.dart';

class MessageModel extends Model {
  MessageModel({
    this.id,
    this.body,
    this.path,
    this.created_at,
    this.deleted_at,
    this.is_read,
    this.sender,
    this.type,
    Map<String, dynamic>? values,
  }) : super(values: values);

  @Field()
  String? id;
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
