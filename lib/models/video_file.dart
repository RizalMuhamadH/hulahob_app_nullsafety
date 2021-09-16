import 'package:hulahob_app_nullsafety/models/video.dart';

class VideoFileModel {
  List<Video>? files;
  String? folderName;

  VideoFileModel({this.files, this.folderName});

  VideoFileModel.fromJson(Map<String, dynamic> json) {
    if (json['files'] != null) {
      files = <Video>[];
      json['files'].forEach((v) {
        files?.add(new Video.fromJson(v));
      });
    }
    folderName = json['folderName'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.files != null) {
      data['files'] = this.files?.map((v) => v.toJson()).toList();
    }
    data['folderName'] = this.folderName;
    return data;
  }
}
