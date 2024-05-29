class Product {
  final int id;
  final String title;
  final double price;
  final int quantity;
  final double? discountPercentage;
  final double? discountedPrice;
  final String thumbnail;

  Product({
    required this.id,
    required this.title,
    required this.price,
    required this.quantity,
    required this.discountedPrice,
    required this.discountPercentage,
    required this.thumbnail,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      price: json['price'],
      quantity: json['quantity'],
      discountPercentage: json['discountPercentage'],
      discountedPrice: json['discountedPrice'],
      thumbnail: json['thumbnail'],
    );
  }
}
