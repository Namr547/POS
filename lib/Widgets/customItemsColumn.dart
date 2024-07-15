// ignore_for_file: prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:pos/Models/item_model.dart';

class CustomItemsColumn extends StatefulWidget {
  ItemModel items;
  final void Function()? onTap;
  CustomItemsColumn({super.key, required this.items, this.onTap});

  @override
  State<CustomItemsColumn> createState() => _CustomItemsColumnState();
}

class _CustomItemsColumnState extends State<CustomItemsColumn> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Column(
      children: [
        GestureDetector(
          onTap: widget.onTap,
          child: Container(
            margin: EdgeInsets.only(left: 10, right: 10),
            height: h / 5,
            width: w / 2,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(20)),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                    top: 20,
                    bottom: 20,
                    right: 20,
                    left: 20,
                    child: Center(
                      child: Image.asset(
                        widget.items.itemImage,
                        fit: BoxFit.fill,
                      ),
                    )),
                if (widget.items.disctext.isNotEmpty)
                  Positioned(
                    child: Container(
                      color: Colors.brown,
                      child: Text(
                        widget.items.disctext,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                Positioned(
                    bottom: 0.1,
                    right: 0.1,
                    child: IconButton(
                        onPressed: () {
                          setState(() {
                            likedList.add(widget.items);
                            widget.items.isLiked = !widget.items.isLiked;
                          });
                        },
                        icon: widget.items.isLiked == true
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              )))
              ],
            ),
          ),
        ),
        SizedBox(
          height: h / 400,
        ),
        Text(
          widget.items.itemName,
          style: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        SizedBox(
          height: h / 400,
        ),
        Text(
          widget.items.itemPrice,
          style: TextStyle(
              fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white),
        )
      ],
    );
  }
}

List<ItemModel> likedList = [];
