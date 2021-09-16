class Pivot {
  String? acceptedAt;

  Pivot({this.acceptedAt});

  Pivot.fromJson(Map<String, dynamic> json) {
    this.acceptedAt = json['accepted_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accepted_at'] = this.acceptedAt;
    return data;
  }
}
