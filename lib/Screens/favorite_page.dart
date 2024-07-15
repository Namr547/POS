// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pos/Screens/product_detail.dart';
import 'package:pos/Widgets/customItemsColumn.dart';

class FavouritePage extends StatefulWidget {
  const FavouritePage({super.key});

  @override
  State<FavouritePage> createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(17, 12, 49, 1),
          title: Text(
            "Favourite Items",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        body: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: likedList.length,
            itemBuilder: (BuildContext context, index) {
              final items = likedList[index];
              return InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ProductDetail(item: items)));
                },
                child: Container(
                  margin: EdgeInsets.only(left: 20, right: 20, top: 22),
                  padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)),
                  child: ListTile(
                    leading: Image.asset(
                      likedList[index].itemImage,
                      height: h * 0.7,
                      width: w * 0.2,
                      fit: BoxFit.contain,
                    ),
                    title: Text(
                      likedList[index].itemName,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color.fromRGBO(17, 12, 49, 1),
                          fontSize: 19),
                    ),
                    subtitle: Text(
                      likedList[index].itemPrice,
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.pink),
                    ),
                    trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            likedList.removeAt(index);
                          });
                        },
                        icon: Icon(Icons.delete)),
                  ),
                ),
              );
            }));
  }
}
