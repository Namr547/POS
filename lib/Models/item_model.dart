// ignore_for_file: public_member_api_docs, sort_constructors_first

class ItemModel {
  String itemImage;
  String itemName;
  String itemPrice;
  String icon;
  String disctext;
  bool isLiked;
  ItemModel(
      {required this.itemImage,
      required this.itemName,
      required this.itemPrice,
      required this.icon,
      required this.disctext,
      this.isLiked = false});
}

List<ItemModel> shoeItems = [
  ItemModel(
    itemImage: 'assets/sneakers/1.png',
    itemName: 'Sneakers 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/2.png',
    itemName: 'Sneakers 2',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/3.png',
    itemName: 'Boots 1',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/4.png',
    itemName: 'Sandals 1',
    itemPrice: '\$39.99',
    icon: 'favorite',
    disctext: '25% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/5.png',
    itemName: 'Heels 1',
    itemPrice: '\$69.99',
    icon: 'favorite',
    disctext: '30% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/6.png',
    itemName: 'Loafers 1',
    itemPrice: '\$54.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/7.png',
    itemName: 'Running Shoes 1',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/8.png',
    itemName: 'Flip Flops 1',
    itemPrice: '\$24.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
];

//Bracelete Items

List<ItemModel> bracletsItems = [
  ItemModel(
    itemImage: 'assets/bracelets/1.png',
    itemName: 'Bracelet 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/bracelets/2.png',
    itemName: 'Bracelet 2',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/bracelets/3.png',
    itemName: 'Bracelet 3',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/bracelets/2.png',
    itemName: 'Bracelet 4',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/bracelets/3.png',
    itemName: 'Bracelet 5',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
];

//Camera Items

List<ItemModel> cameraItems = [
  ItemModel(
    itemImage: 'assets/camera/1.png',
    itemName: 'Camera 2',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/camera/2.png',
    itemName: 'Camera 1',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/camera/3.png',
    itemName: 'Camera 3',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/camera/4.png',
    itemName: 'Camera 4',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
];

//Facial Items

List<ItemModel> facialItems = [
  ItemModel(
    itemImage: 'assets/facials/1.png',
    itemName: 'Facial 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/facials/2.png',
    itemName: 'Facial 2',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
  ItemModel(
    itemImage: 'assets/facials/3.png',
    itemName: 'Facial 3',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/facials/2.png',
    itemName: 'Facial 4',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  ),
];

//Watches Items

List<ItemModel> watchesItems = [
  ItemModel(
    itemImage: 'assets/facials/1.png',
    itemName: 'Facial 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/facials/2.png',
    itemName: 'Facial 2',
    itemPrice: '\$59.99',
    icon: 'favorite',
    disctext: '15% Off',
  )
];

//Glasses Items

List<ItemModel> glassesItems = [
  ItemModel(
    itemImage: 'assets/facials/1.png',
    itemName: 'Facial 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
];

//Featured Items

List<ItemModel> featuredItems = [
  ItemModel(
    itemImage: 'assets/facials/1.png',
    itemName: 'Facial 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/1.png',
    itemName: 'Sneakers 1',
    itemPrice: '\$49.99',
    icon: 'favorite',
    disctext: '20% Off',
  ),
  ItemModel(
    itemImage: 'assets/bracelets/3.png',
    itemName: 'Bracelet 5',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/camera/2.png',
    itemName: 'Camera 1',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/facials/3.png',
    itemName: 'Facial 3',
    itemPrice: '\$79.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
  ItemModel(
    itemImage: 'assets/sneakers/8.png',
    itemName: 'Flip Flops 1',
    itemPrice: '\$24.99',
    icon: 'favorite',
    disctext: '10% Off',
  ),
];
