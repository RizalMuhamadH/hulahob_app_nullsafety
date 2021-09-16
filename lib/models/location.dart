class Geolocation {
  double? lat;
  double? lng;

  Geolocation({required this.lat, required this.lng});

  Geolocation.fromJson(Map<String, dynamic> json) {
    lat = json['lat'] != null ? json['lat'] : null;
    lng = json['lng'] != null ? json['lng'] : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['lat'] = this.lat;
    data['lng'] = this.lng;

    return data;
  }
}
