// ignore_for_file: unused_local_variable, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:pos/Screens/product_detail.dart';
import 'package:pos/Widgets/elevated_button.dart';

class PlaceOrderPage extends StatefulWidget {
  const PlaceOrderPage({super.key});

  @override
  State<PlaceOrderPage> createState() => _PlaceOrderPageState();
}

class _PlaceOrderPageState extends State<PlaceOrderPage> {
  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        title: Text(
          "Place Order",
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      backgroundColor: Color.fromRGBO(17, 12, 49, 1),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                rowData('SHIPING TO:',
                    'King Street 20 South, Michingan(MI),48075, california, USA King Street 20 South,'),
                rowData('PAY WITH CREDIT:', 'XXXX-XXXX-XXXX-9352'),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text(
                    'ORDER DETAILS',
                    style: TextStyle(
                        color: Colors.grey, fontWeight: FontWeight.bold),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: cartList.length,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(top: 5),
                          padding: EdgeInsets.only(left: 1, top: 5, bottom: 10),
                          decoration: BoxDecoration(
                              color: Colors.grey.shade200,
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
                          ),
                        );
                      }),
                ),
                Positioned(
                    child: Container(
                  height: h * 0.2,
                  width: w,
                  decoration:
                      BoxDecoration(color: Color.fromRGBO(17, 12, 49, 1)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      rowData1('SUBTOTAL', '\$675'),
                      rowData1('DISCOUNT', '\$45'),
                      rowData1('TOTAL TO PAY', '\$630'),
                      MyElevatedButton(
                        backColor: Colors.white,
                        textColor: Color.fromRGBO(17, 12, 49, 1),
                        buttonText: 'PLACE ORDER',
                        onPressed: () {},
                      )
                    ],
                  ),
                ))
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget rowData(String shipingto, String address) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                shipingto,
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              TextButton(onPressed: () {}, child: Text('Change')),
            ],
          ),
          Text(
            address,
            textAlign: TextAlign.justify,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          )
        ],
      ),
    );
  }

  Widget rowData1(String name, String price) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          name,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        Text(
          price,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )
      ],
    );
  }
}
