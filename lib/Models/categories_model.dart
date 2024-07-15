// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:pos/Models/item_model.dart';

class CategoriesModel {
  String categoriesImage;
  String name;
  List<ItemModel> items;
  CategoriesModel(
      {required this.categoriesImage, required this.name, required this.items});
}

List<CategoriesModel> categoriesList = [
  CategoriesModel(
    categoriesImage: 'assets/images/sneakers1.png',
    name: 'Sneakers',
    items: shoeItems,
  ),
  CategoriesModel(
    categoriesImage: 'assets/images/bracelet.png',
    name: 'Bracelets',
    items: bracletsItems,
  ),
  CategoriesModel(
    categoriesImage: 'assets/images/camera.png',
    name: 'Digital Camera',
    items: cameraItems,
  ),
  CategoriesModel(
    categoriesImage: 'assets/images/facial.png',
    name: 'Facial',
    items: facialItems,
  ),
  CategoriesModel(
    categoriesImage: 'assets/images/watches.png',
    name: 'Watches',
    items: watchesItems,
  ),
  CategoriesModel(
    categoriesImage: 'assets/images/glasses.png',
    name: 'Glasses',
    items: glassesItems,
  ),
];
