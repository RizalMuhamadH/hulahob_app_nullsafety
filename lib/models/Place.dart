class Place {
  String? name;
  String? address;
  double? lat;
  double? lng;

  Place({this.name, this.address, this.lat, this.lng});

  Place.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    address = json['address'];
    lat = json['lat'];
    lng = json['lng'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['address'] = this.address;
    data['lat'] = this.lat;
    data['lng'] = this.lng;
    return data;
  }
}
