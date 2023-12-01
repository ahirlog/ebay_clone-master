// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'sign_in.dart';

class DrawerContent extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DrawerContent> {
  ListTile drawerMenu({required String menuName, required IconData menuIcon}) {
    return ListTile(
      title: Text(
        '$menuName',
        style: TextStyle(
          color: Color(0xff616161),
        ),
      ),
      leading: Icon(
        menuIcon,
        color: Color(0xff616161),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => SignInPage()));
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            height: 80,
            padding: EdgeInsets.only(top: 20),
            child: ListTile(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInPage()));
              },
              title: Row(
                children: [
                  Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                  SizedBox(width: 25),
                  Text(
                    'Sign in',
                    style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          drawerMenu(menuName: 'Home', menuIcon: Icons.home_outlined),
          drawerMenu(
              menuName: 'Notifications',
              menuIcon: Icons.notifications_outlined),
          drawerMenu(menuName: 'Messages', menuIcon: Icons.email_outlined),
          Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 13, vertical: 12),
            child: Text(
              'My eBay',
              style: TextStyle(
                color: Color(0xff616161),
              ),
            ),
          ),
          drawerMenu(menuName: 'Watching', menuIcon: Icons.visibility_outlined),
          drawerMenu(
              menuName: 'Saved', menuIcon: Icons.favorite_border_outlined),
          drawerMenu(menuName: 'Buy again', menuIcon: Icons.payment_outlined),
          drawerMenu(
              menuName: 'Purchases', menuIcon: Icons.local_mall_outlined),
          drawerMenu(menuName: 'Bids & Offers', menuIcon: Icons.gavel_outlined),
          drawerMenu(menuName: 'Selling', menuIcon: Icons.local_offer_outlined),
          Divider(
            color: Colors.grey,
            thickness: 0.3,
          ),
          drawerMenu(menuName: 'Categories', menuIcon: Icons.category_outlined),
          drawerMenu(menuName: 'Deals', menuIcon: Icons.bolt),
          drawerMenu(menuName: 'Settings', menuIcon: Icons.settings_outlined),
          drawerMenu(menuName: 'Help', menuIcon: Icons.help_outline_outlined),
        ],
      ),
    );
  }
}
