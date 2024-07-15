// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class OrderHistoryPage extends StatelessWidget {
  const OrderHistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 12, 49, 1),
      appBar: AppBar(
        backgroundColor: Color.fromRGBO(17, 12, 49, 1),
        title: Text('Order History'),
        centerTitle: true,
      ),
    );
  }
}
