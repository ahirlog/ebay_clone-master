// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'drawer_content.dart';
// import 'sample.dart';
import 'sign_in.dart';
import 'main.dart';

class Items extends StatefulWidget {
  @override
  _ItemsState createState() => _ItemsState();
}

class _ItemsState extends State<Items> {
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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          actions: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xffF7F7F7),
                child: IconButton(
                  splashRadius: 23,
                  icon: Icon(
                    Icons.search_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xffF7F7F7),
                child: IconButton(
                  splashRadius: 23,
                  icon: Icon(
                    Icons.photo_camera_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 5, right: 15),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Color(0xffF7F7F7),
                child: IconButton(
                  splashRadius: 23,
                  icon: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.black,
                  ),
                  onPressed: () {},
                ),
              ),
            ),
          ],
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.white,
          title: Text(
            'Category',
            style: TextStyle(
              color: Colors.black,
            ),
          ),
        ),
        drawer: DrawerContent(),
        body: ListView(
          children: [
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shop by Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
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
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Shop by Category',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ListTile(
              title: Text(
                'Top Offers',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Grocery',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Mobile',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Fashion',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Electronics',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Home',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Appliances',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Travel',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Beauty',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
            ListTile(
              title: Text(
                'Toys',
                style: TextStyle(
                  color: Color(0xff616161),
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
            ),
            Divider(
              height: 10,
              indent: 15,
              endIndent: 15,
              color: Colors.grey,
              thickness: 0.3,
            ),
          ],
        ),
      ),
    );
  }
}
