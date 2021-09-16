import 'package:hulahob_app_nullsafety/models/pivot.dart';

class Follow {
  int? id;
  String? name;
  String? email;
  String? avatar;
  String? notifyToken;
  Pivot? pivot;

  Follow(
      {this.id,
      this.name,
      this.email,
      this.avatar,
      this.notifyToken,
      this.pivot});

  Follow.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    avatar = json['avatar'];
    notifyToken = json['notify_token'];
    pivot = json['pivot'] != null ? new Pivot.fromJson(json['pivot']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['email'] = this.email;
    data['avatar'] = this.avatar;
    data['notify_token'] = this.notifyToken;
    if (this.pivot != null) {
      data['pivot'] = this.pivot?.toJson();
    }
    return data;
  }
}
