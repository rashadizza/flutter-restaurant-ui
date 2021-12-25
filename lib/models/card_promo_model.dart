class CardPromo {
  String imageUrl;
  String name;
  String priceBeforeDisc;
  String priceAfterDisc;

  CardPromo({
    this.imageUrl,
    this.name,
    this.priceBeforeDisc,
    this.priceAfterDisc,
  });
}

List<CardPromo> cards = [
  CardPromo(
    imageUrl: 'assets/images/beefcrispy.jpg',
    name: 'Beef Crispy',
    priceBeforeDisc: '15.000',
    priceAfterDisc: '12.500',
  ),
  CardPromo(
    imageUrl: 'assets/images/fruitswithgarlic.jpg',
    name: 'Fruits With Garlic',
    priceBeforeDisc: '15.000',
    priceAfterDisc: '12.500',
  ),
  CardPromo(
    imageUrl: 'assets/images/bananabread.jpg',
    name: 'Banana Bread',
    priceBeforeDisc: '15.000',
    priceAfterDisc: '12.500',
  ),
];
