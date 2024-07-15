// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';
import 'package:pos/Models/categories_model.dart';
import 'package:pos/Models/item_model.dart';
import 'package:pos/Product%20Pages/categoryItemsPage.dart';
import 'package:pos/Screens/home_page.dart';
import 'package:pos/Screens/product_detail.dart';
import 'package:pos/Widgets/customItemsColumn.dart';
import 'package:pos/components/my_card.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  final _controller = PageController();

  bool showAllCategories = false;

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.sizeOf(context).width;
    double h = MediaQuery.sizeOf(context).height;
    return Scaffold(
      backgroundColor: Color.fromRGBO(17, 12, 49, 1),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Text DASHBOARD
              Align(
                alignment: Alignment.center,
                child: Text(
                  'DASHBOARD',
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: h / 100,
              ),
              //TEXT All in one place
              Text(
                'All In One Place',
                style: TextStyle(
                    fontSize: 15,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),

              SizedBox(
                height: h / 80,
              ),
              //CARDS

              SizedBox(
                height: h / 3.5,
                child: PageView(
                  controller: _controller,
                  scrollDirection: Axis.horizontal,
                  children: [
                    MyCard(
                      name: 'Rolex Daytona\nGold',
                      description: '41 mm',
                      price: 1278,
                      color: Color.fromARGB(255, 234, 157, 4),
                      imagePath: 'assets/images/rolex.png',
                    ),
                    MyCard(
                      name: 'Sneakers Skate \nShoe Nike One',
                      description: 'Nike',
                      price: 175,
                      color: Color(0XFFa6d940),
                      imagePath: 'assets/images/sneakers.png',
                    ),
                    MyCard(
                      name: 'Hooded Man\nFilson Jacket',
                      description: 'Winter Top Selling',
                      price: 89,
                      color: Colors.teal,
                      imagePath: 'assets/images/jacket.png',
                    ),
                  ],
                ),
              ),

              SizedBox(
                height: 15,
              ),
              //Page Indicator
              SmoothPageIndicator(
                controller: _controller,
                count: 3,
                effect: WormEffect(
                    dotWidth: 15,
                    dotHeight: 5,
                    spacing: 10,
                    dotColor: Colors.white,
                    activeDotColor: Colors.greenAccent,
                    type: WormType.thin,
                    strokeWidth: 1),
              ),

              SizedBox(
                height: h / 100,
              ),
              //Text Categories, See all>>
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Categories',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage(
                                        newindex: 1,
                                      )));
                        },
                        child: Text(
                          'See All >>',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  ],
                ),
              ),

              SizedBox(
                height: h / 500,
              ),
              //Categories Items
              SizedBox(
                height: h / 6,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoriesList.length,
                  itemBuilder: (context, index) {
                    final categories = categoriesList[index];
                    return Column(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => CategoryItemsPage(
                                          categoriesModel: categories,
                                        )));
                          },
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5, vertical: 5),
                            child: Container(
                              height: h / 9,
                              padding: EdgeInsets.all(18),
                              decoration: BoxDecoration(
                                color: Colors.grey.shade300,
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Center(
                                child: Image.asset(
                                  categories.categoriesImage,
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: h / 400,
                        ),
                        Text(
                          categories.name,
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        )
                      ],
                    );
                  },
                ),
              ),

              //Text Featured Products,
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Featured Products',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    // TextButton(
                    //     onPressed: () {
                    //       Navigator.push(
                    //           context,
                    //           MaterialPageRoute(
                    //               builder: (context) => CategoryPage()));
                    //     },
                    //     child: Text(
                    //       'See All >>',
                    //       style: TextStyle(color: Colors.white, fontSize: 16),
                    //     )
                    //     ),
                  ],
                ),
              ),

              SizedBox(
                height: h / 500,
              ),
              //Featured Item
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: featuredItems.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, childAspectRatio: 0.8),
                itemBuilder: (context, index) {
                  final items = featuredItems[index];
                  return CustomItemsColumn(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                    item: items,
                                  )));
                    },
                    items: items,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
