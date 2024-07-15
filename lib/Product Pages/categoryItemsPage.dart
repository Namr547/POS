// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pos/Models/categories_model.dart';
import 'package:pos/Screens/product_detail.dart';
import 'package:pos/Widgets/customItemsColumn.dart';

class CategoryItemsPage extends StatelessWidget {
  CategoriesModel categoriesModel;
  CategoryItemsPage({required this.categoriesModel, super.key});

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return SafeArea(
      child: Scaffold(
          appBar: AppBar(
            foregroundColor: Colors.white,
            centerTitle: true,
            backgroundColor: Color.fromRGBO(17, 12, 49, 1),
            title: Text(
              categoriesModel.name,
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          ),
          backgroundColor: Color.fromRGBO(17, 12, 49, 1),
          body: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: 0.8),
              itemCount: categoriesModel.items.length,
              itemBuilder: (context, index) {
                final item = categoriesModel.items[index];
                return CustomItemsColumn(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ProductDetail(item: item)));
                  },
                  items: item,
                );
              })),
    );
  }
}
