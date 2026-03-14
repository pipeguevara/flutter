class ProductModel {
  int id;
  String title;
  String slug;
  double price;
  String description;
  List<String> images;

  ProductModel({
    required this.id,
    required this.description,
    required this.title,
    required this.slug,
    required this.price,
    required this.images,
  });
  

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json["id"] ?? 0,
    description: json["description" ] ?? 'not description',
    title: json["title"] ?? 'No title',
    slug: json["slug"] ?? 'not description',
    price: json["price"] ?? 0,
    images: List<String>.from(json["images"] ?? []),
  );
}
