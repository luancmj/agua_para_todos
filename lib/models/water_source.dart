class WaterSource {
  String id;
  String name;
  String address;
  String image;
  bool isPrivate;
  double latitude;
  double longitude;

  WaterSource({
    this.id = '',
    required this.name,
    required this.address,
    this.image = '',
    required this.isPrivate,
    required this.latitude,
    required this.longitude
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'address': address,
    'image': image,
    'isPrivate': isPrivate,
    'latitude': latitude,
    'longitude': longitude,
  };

  static WaterSource fromJson(Map<String, dynamic> json) => WaterSource(
    id: json['id'],
    name: json['name'],
    address: json['address'],
    image: json['image'],
    isPrivate: json['isPrivate'],
    latitude: json['latitude'],
    longitude: json['longitude']
  );
}