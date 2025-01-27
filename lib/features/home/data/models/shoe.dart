class Shoe {
  final String id;
  final String name;
  final String brand;
  final String image;
  final double price;
  final String category;
  final bool isBestSeller;
  final bool isNewArrival;

  const Shoe({
    required this.id,
    required this.name,
    required this.brand,
    required this.image,
    required this.price,
    required this.category,
    this.isBestSeller = false,
    this.isNewArrival = false,
  });
}
