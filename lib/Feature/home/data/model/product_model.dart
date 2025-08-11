class ProductModel {
  final String title;
  final String description;
  final String image;
  final double price;

  ProductModel({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });

  static List<ProductModel> getProducts() {
    return [
      ProductModel(
        title: 'Mountain Bike',
        description: 'Read Bike',
        image: 'assets/images/product_four.png',
        price: 1200.0,
      ),
      ProductModel(
        title: 'Road Bike',
        description: 'Read Bike',
        image: 'assets/images/product_two.png',
        price: 1500.0,
      ),
      ProductModel(
        title: 'Hybrid Bike',
        description: 'Read Bike',
        image: 'assets/images/product_three.png',
        price: 1000.0,
      ),
      ProductModel(
        title: 'Hybrid Bike',
        description: 'Read Bike',
        image: 'assets/images/product_one.png',
        price: 1000.0,
      ),
    ];
  }
}
