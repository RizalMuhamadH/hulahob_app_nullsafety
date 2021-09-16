import 'package:get/get.dart';
import 'package:hulahob_app_nullsafety/models/user.dart';

class Comment {
  int? id;
  int? parentId;
  int? postId;
  User? user;
  String? comment;
  List<Comment>? replies;
  String? createdAt;

  Comment(
      {this.id,
      this.parentId,
      this.postId,
      this.user,
      this.comment,
      this.replies,
      this.createdAt});

  Comment.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    parentId = json['parent_id'];
    postId = json['commentable_id'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    comment = json['comment'];
    if (json['replies'] != null) {
      replies = <Comment>[];
      json['replies'].forEach((v) {
        replies!.add(new Comment.fromJson(v));
      });
    }
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['parent_id'] = this.parentId;
    data['commentable_id'] = this.postId;
    if (this.user != null) {
      data['user'] = this.user!.toJson();
    }
    data['comment'] = this.comment;
    if (this.replies != null) {
      data['replies'] = this.replies?.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    return data;
  }
}
