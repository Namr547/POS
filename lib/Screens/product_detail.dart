// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, avoid_print

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:pos/Models/item_model.dart';
import 'package:pos/Widgets/elevated_button.dart';
import 'package:pos/Widgets/rating_listTile.dart';

class ProductDetail extends StatefulWidget {
  ItemModel item;
  ProductDetail({required this.item, super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail>
    with TickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 12, 49, 1),
      appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.white,
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        title: Text(
          'Product Detail',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        children: [
          Column(
            children: [
              //Picture
              Padding(
                padding: const EdgeInsets.only(
                  top: 10,
                ),
                child: Container(
                  height: h / 3,
                  decoration: BoxDecoration(color: Colors.grey.shade300),
                  child: Center(
                      child: Image.asset(
                    widget.item.itemImage,
                    fit: BoxFit.contain,
                  )),
                ),
              ),
              SizedBox(
                height: h / 100,
              ),

              //Text Name
              Text(
                widget.item.itemName,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: h / 60,
              ),

              //Row for Stars and TExt
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: List<Widget>.generate(5, (index) {
                      return Icon(
                        index < 3 ? Icons.star : Icons.star_border,
                        color: Colors.white,
                      );
                    }),
                  ),
                  SizedBox(
                    width: w / 40,
                  ),
                  Text(
                    '1,248 Reviews',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: h / 100,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Feel free to experiment with different packages and \nanimation techniques to create the desired visual effect \nfor your page transitions.',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(
                height: h / 80,
              ),
              Text(
                widget.item.itemPrice,
                style: TextStyle(color: Colors.pinkAccent, fontSize: 30),
              ),
              SizedBox(
                height: h / 80,
              ),
              TabBar(
                  labelStyle: TextStyle(fontWeight: FontWeight.bold),
                  padding: EdgeInsets.all(10),
                  labelColor: Colors.white,
                  indicatorColor: Colors.pink,
                  controller: tabController,
                  dividerColor: Colors.white,
                  tabs: [
                    Tab(
                      text: 'Description',
                    ),
                    Tab(
                      text: 'Specification',
                    ),
                    Tab(
                      text: 'Reviews',
                    )
                  ]),
              Expanded(
                child: TabBarView(controller: tabController, children: [
                  Text(
                    'A Material Design primary tab bar.Primary tabs are placed \nat the top of the content pane under a top app bar. They display\n the main content destinations.Typically created as the AppBar bottom part of an AppBar and in conjunction with a TabBarView.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'A Material Design primary tab bar.Primary tabs are placed \nat the top of the content pane under a top app bar. They display\n the main content destinations.Typically created as the AppBar bottom part of an AppBar and in conjunction with a TabBarView.',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  ListView.builder(
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        return RatingListTile();
                      })
                ]),
              ),
            ],
          ),
          Positioned(
            bottom: 15,
            left: w * 0.1,
            right: w * 0.1,
            child: MyElevatedButton(
              backColor: Colors.white,
              textColor: Color.fromRGBO(17, 12, 49, 1),
              buttonText: 'Add to Cart',
              onPressed: () {
                cartList.add(widget.item);
                print(cartList);
                Fluttertoast.showToast(
                  msg: 'Item added to cart!',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.TOP,
                  backgroundColor: Colors.grey,
                  textColor: Colors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

//list for product. when i click on the add to cart button then the item will be added to the cart page
List<ItemModel> cartList = [];
