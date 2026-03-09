class DragonModel {
  int id;
  String name;
  String ki;
  String maxKi;
  String description;

  DragonModel({
    required this.id,
    required this.name,
    required this.ki,
    required this.maxKi,
    required this.description,
  });

  factory DragonModel.fromJson(Map<String, dynamic> json) => DragonModel(
    id: json["id"] ?? 0,
    description: json["description" ] ?? 'not description',
    name: json["name"] ?? 'No title',
    ki: json["ki"] ?? 'not description',
    maxKi: json["maxKi"] ?? 0,
  );
}
