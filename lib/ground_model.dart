class GroundModel {
  int id;
  String name;
  String image;
  String location;

  GroundModel({
    required this.id,
    required this.name,
    required this.image,
    required this.location,
  });

  factory GroundModel.fromMap(Map<String, dynamic> json) =>  GroundModel(
    id: json["id"],
    name: json["name"],
    image: json["image"],
    location: json["location"],
  );

  Map<String, dynamic> toMap() => {
    "id": id,
    "name": name,
    "image": image,
    "location": location,
  };
}