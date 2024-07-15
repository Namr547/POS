// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pos/Screens/place_order_page.dart';
import 'package:pos/Screens/product_detail.dart';
import 'package:pos/Widgets/elevated_button.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(17, 12, 49, 1),
          title: Text(
            "Cart Page",
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ),
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        body: Stack(
          children: [
            Positioned.fill(
              child: ListView.builder(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: cartList.length,
                  itemBuilder: (BuildContext context, index) {
                    final item = cartList[index];
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (contex) =>
                                    ProductDetail(item: item)));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 20, right: 20, top: 22),
                        padding: EdgeInsets.only(left: 20, top: 20, bottom: 20),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)),
                        child: ListTile(
                          leading: Image.asset(
                            cartList[index].itemImage,
                            height: h * 0.7,
                            width: w * 0.2,
                            fit: BoxFit.contain,
                          ),
                          title: Text(
                            cartList[index].itemName,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(17, 12, 49, 1),
                                fontSize: 19),
                          ),
                          subtitle: Text(
                            cartList[index].itemPrice,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.pink),
                          ),
                          trailing: IconButton(
                              onPressed: () {
                                setState(() {
                                  cartList.removeAt(index);
                                });
                              },
                              icon: Icon(Icons.delete)),
                        ),
                      ),
                    );
                  }),
            ),
            Positioned(
                bottom: 10,
                left: 10,
                right: 10,
                child: MyElevatedButton(
                  backColor: Colors.white,
                  textColor: Color.fromRGBO(17, 12, 49, 1),
                  buttonText: 'Place Order Here',
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PlaceOrderPage()));
                  },
                ))
          ],
        ));
  }
}
