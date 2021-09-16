import 'package:flamingo/flamingo.dart';
import 'package:flamingo_annotation/flamingo_annotation.dart';

part 'user_model.flamingo.dart';

class UserModel extends Model {
  UserModel({
    this.uid,
    this.avatar,
    this.email,
    this.is_online,
    this.last_active,
    this.name,
    Map<String, dynamic>? values,
  }) : super(values: values);

  @Field()
  int? uid;
  @Field()
  String? name;
  @Field()
  String? email;
  @Field()
  String? avatar;
  @Field()
  bool? is_online;
  @Field()
  Timestamp? last_active;

  @override
  Map<String, dynamic> toData() => _$toData(this);

  @override
  void fromData(Map<String, dynamic> data) => _$fromData(this, data);
}
