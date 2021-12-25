class Category {
  String imageUrl;
  String name;

  Category({
    this.imageUrl,
    this.name,
  });
}

List<Category> categories = [
  Category(
    imageUrl: 'assets/images/meatball.png',
    name: 'Menu Sehat',
  ),
  Category(
    imageUrl: 'assets/images/promo.png',
    name: 'Promo',
  ),
  Category(
    imageUrl: 'assets/images/chicken.png',
    name: 'Menu Ayam',
  ),
  Category(
    imageUrl: 'assets/images/fastfood.png',
    name: 'Cepat Saji',
  ),
];
