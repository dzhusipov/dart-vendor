class Location {
  double? longitude;
  double? latitude;

  Location(this.longitude, this.latitude);

  Location.fromJson(Map<String, dynamic> json) {
    longitude = json['longitude'];
    latitude = json['latitude'];
  }
}
