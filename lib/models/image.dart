class Image {
  int? id;
  String? path;
  String? type;
  String? createdAt;

  Image({this.id, this.path, this.type, this.createdAt});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    path = json['path'];
    type = json['type'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['path'] = this.path;
    data['type'] = this.type;
    data['created_at'] = this.createdAt;
    return data;
  }
}
