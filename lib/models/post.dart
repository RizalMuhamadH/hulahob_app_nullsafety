import 'package:hulahob_app_nullsafety/models/Place.dart';
import 'package:hulahob_app_nullsafety/models/data_file.dart';
import 'package:hulahob_app_nullsafety/models/user.dart';

class Post {
  int? id;
  String? caption;
  User? user;
  Place? place;
  List<DataFile>? images;
  List<DataFile>? videos;
  String? createdAt;
  int? commentCount;
  int? likeCount;
  bool? liked;

  Post(
      {this.id,
      this.caption,
      this.user,
      this.place,
      this.images,
      this.videos,
      this.createdAt,
      this.commentCount,
      this.likeCount,
      this.liked});

  Post.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    caption = json['caption'];
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
    place = json['place'] != null ? new Place.fromJson(json['place']) : null;
    if (json['images'] != null) {
      images = <DataFile>[];
      json['images'].forEach((v) {
        images!.add(new DataFile.fromJson(v));
      });
    }
    if (json['videos'] != null) {
      videos = <DataFile>[];
      json['videos'].forEach((v) {
        videos!.add(new DataFile.fromJson(v));
      });
    }
    createdAt = json['created_at'];
    commentCount = json['comment_count'];
    likeCount = json['like_count'];
    liked = json['liked'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['caption'] = this.caption;
    if (this.user != null) {
      data['user'] = this.user?.toJson();
    }
    data['place'] = this.place;
    if (this.images != null) {
      data['images'] = this.images?.map((v) => v.toJson()).toList();
    }
    if (this.videos != null) {
      data['videos'] = this.videos?.map((v) => v.toJson()).toList();
    }
    data['created_at'] = this.createdAt;
    data['comment_count'] = this.commentCount;
    data['like_count'] = this.likeCount;
    data['liked'] = this.liked;
    return data;
  }
}
