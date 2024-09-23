class ProductModel {
  int? id;
  String? title;
  String? location;
  num? price;
  String? description;
  //String? category;
  String? image;

  ProductModel({
    this.id,
    this.title,
    this.location,
    this.price,
    this.description,
    //this.category,
    this.image,
  });

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'location': location,
    'price': price,
    'description': description,
    'image': image,
  };

  factory ProductModel.fromJson(Map<String, dynamic> json) => ProductModel(
    id: json['id'],
    title: json['title'],
    location: json['location'],
    price: json['price'],
    description: json['description'],
    image: json['image'],
  );


}






