class Video {
  String? path;
  String? dateAdded;
  String? displayName;
  String? duration;
  String? size;

  Video(
      {this.path, this.dateAdded, this.displayName, this.duration, this.size});

  Video.fromJson(Map<String, dynamic> json) {
    path = json['path'];
    dateAdded = json['dateAdded'];
    displayName = json['displayName'];
    duration = json['duration'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['path'] = this.path;
    data['dateAdded'] = this.dateAdded;
    data['displayName'] = this.displayName;
    data['duration'] = this.duration;
    data['size'] = this.size;
    return data;
  }
}
