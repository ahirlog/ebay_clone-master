// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:ebay_clone/items.dart';
import 'package:ebay_clone/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'drawer_content.dart';
import 'sample.dart';
import 'sign_in.dart';
import 'items.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Widget dealItems({required String imageItems}) {
    return Padding(
      padding: EdgeInsets.all(20),
      child: TextButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Items()));
        },
        child: Expanded(
          child: Container(
            child: Column(
              children: [
                ClipRect(
                  child: Align(
                    alignment: Alignment.center,
                    widthFactor: 0.2,
                    heightFactor: 0.3,
                    child: Image.network(imageItems),
                  ),
                ),
                Text(
                  'Details',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                Text(
                  'US \$34.77',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 3,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget newImage({required String imageURL, required String itemTitle}) {
    return TextButton(
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Items()));
      },
      child: Expanded(
        child: Container(
          padding: EdgeInsets.all(2),
          width: 150,
          height: 200,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(imageURL),
            ),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              itemTitle,
              style: TextStyle(color: Colors.black),
            ),
          ),
        ),
      ),
    );
  }

  TextButton homePageMenu(
      {required String menuName, required IconData menuIcon}) {
    return TextButton(
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18.0),
          ),
        ),
        maximumSize: MaterialStateProperty.all(Size(150, 50)),
        backgroundColor: MaterialStateProperty.all(Color(0xffF7F7F7)),
        padding: MaterialStateProperty.all<EdgeInsets>(EdgeInsets.all(13)),
      ),
      onPressed: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInPage()));
      },
      child: Row(
        children: [
          Icon(
            menuIcon,
            color: Color(0xff616161),
          ),
          SizedBox(
            width: 10,
          ),
          Text(
            '$menuName',
            style: TextStyle(
              color: Color(0xff616161),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        actions: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: CircleAvatar(
              radius: 22,
              backgroundColor: Color(0xffF7F7F7),
              child: IconButton(
                splashRadius: 23,
                icon: Icon(
                  Icons.shopping_cart_outlined,
                  color: Colors.black,
                ),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SignInPage()));
                },
              ),
            ),
          )
        ],
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.network(
          'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/EBay_logo.svg/1200px-EBay_logo.svg.png',
          height: 25,
        ),
      ),
      drawer: DrawerContent(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
                padding:
                    EdgeInsets.only(left: 20, right: 20, top: 10, bottom: 0),
                child: TextField(
                  decoration: InputDecoration(
                    hintStyle: TextStyle(
                      color: Color(0xff6A6A6A),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                    hintText: 'Search for anything',
                    prefixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Icon(
                        Icons.search,
                        color: Colors.black,
                        size: 30,
                      ),
                    ),
                    suffixIcon: Padding(
                      padding: EdgeInsets.all(10),
                      child: Stack(
                        children: [
                          Wrap(
                            children: [
                              Icon(
                                Icons.keyboard_voice_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Icon(
                                Icons.photo_camera_outlined,
                                color: Colors.black,
                                size: 30,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3),
                      borderSide: BorderSide.none,
                    ),
                    filled: true,
                    fillColor: Color(0xffF1F1F1),
                    contentPadding: EdgeInsets.all(0),
                  ),
                )),
            SizedBox(
              height: 4,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: ButtonBar(
                buttonPadding: EdgeInsets.symmetric(
                  horizontal: 20,
                ),
                children: [
                  homePageMenu(
                      menuName: 'Selling', menuIcon: Icons.sell_outlined),
                  homePageMenu(menuName: 'Deals', menuIcon: Icons.bolt),
                  homePageMenu(
                      menuName: 'Categories',
                      menuIcon: Icons.category_outlined),
                  homePageMenu(
                      menuName: 'Saved',
                      menuIcon: Icons.favorite_border_outlined),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text('Sign in so we can personalize your eBay experience'),
            ButtonBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 12,
                    ),
                    child: Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          width: 1.5,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => SignInPage()));
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 12,
                    ),
                    child: Text(
                      'Sign in',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        side: BorderSide(
                          width: 1.5,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 13,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Popular Destinations',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Wrap(
              children: [
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2017/08/06/17/13/diamond-2594307_960_720.jpg',
                  itemTitle: 'Jewelry',
                ),
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2014/03/24/19/01/hairdryer-295616_960_720.jpg',
                  itemTitle: 'Beauty',
                ),
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2014/05/02/21/49/laptop-336373_960_720.jpg',
                  itemTitle: 'Computer & Tabs',
                ),
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2016/03/26/22/22/happy-1281590_960_720.jpg',
                  itemTitle: 'Toys & Hobbies',
                ),
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2014/08/05/10/27/iphone-410311_960_720.jpg',
                  itemTitle: 'Cell Phones',
                ),
                newImage(
                  imageURL:
                      'https://cdn.pixabay.com/photo/2016/11/19/18/06/feet-1840619_960_720.jpg',
                  itemTitle: 'Shoes',
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Daily Deals -->',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.black),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Expanded(
                child: Row(
                  children: [
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2015/06/25/17/21/smart-watch-821557_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2018/01/16/10/18/headphone-3085681_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2016/03/09/09/57/drone-1245980_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2016/11/29/02/07/drone-1866742_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2015/12/03/22/15/tablet-1075789_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2014/09/24/14/29/macbook-459196_960_720.jpg'),
                    dealItems(
                        imageItems:
                            'https://cdn.pixabay.com/photo/2018/03/22/02/37/background-3249063_960_720.png'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
