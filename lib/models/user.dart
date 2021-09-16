import 'package:hulahob_app_nullsafety/models/hobby.dart';

class User {
  int? id;
  String? name;
  String? email;
  String? phone;
  String? avatar;
  String? password;
  String? notifyToken;
  // Tokens tokens;
  List<Hobby>? hobbies;
  bool? following;
  int? followings;
  int? followers;
  int? posts;

  User(
      {this.id,
      this.name,
      this.email,
      this.phone,
      this.avatar,
      this.password,
      this.notifyToken,
      // Tokens tokens,
      this.following,
      this.followings,
      this.followers,
      this.hobbies,
      this.posts});

  User.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    avatar = json['avatar'];
    notifyToken = json['notify_token'];
    // tokens =
    //     json['tokens'] != null ? new Tokens.fromJson(json['tokens']) : null;
    following = json['following'];
    followings = json['followings'];
    followers = json['followers'];
    if (json['hobbies'] != null) {
      hobbies!.addAll(json['hobbies']);
    }
    posts = json['posts'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['phone'] = this.phone;
    data['avatar'] = this.avatar;
    data['notify_token'] = this.notifyToken;
    // if (this.tokens != null) {
    //   data['tokens'] = this.tokens.toJson();
    // }
    data['following'] = this.following;
    data['followings'] = this.followings;
    data['followers'] = this.followers;
    if (this.hobbies != null) {
      data['hobbies'] = this.hobbies!.map((v) => v.toJson()).toList();
    }
    data['posts'] = this.posts;
    return data;
  }
}

class Tokens {
  String? token;
  String? name;

  Tokens({this.token, this.name});

  Tokens.fromJson(Map<String, dynamic> json) {
    token = json['token'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['token'] = this.token;
    data['name'] = this.name;
    return data;
  }
}
