// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class DrawerF extends StatelessWidget {
  const DrawerF({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      decoration: BoxDecoration(
        color: Color(0xFFEC407A),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 50.0, top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // padding: EdgeInsets.all(20),
          children: [
            Container(
              padding: const EdgeInsets.only(left: 15.0, top: 20.0, bottom: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.network(
                  'https://www.lookslikefilm.com/wp-content/uploads/2019/01/Amanda-Lennon4.jpg',
                  height: 90.0,
                  fit: BoxFit.cover,
                  width: 90.0,
                ),
              ),
            ),
            // DrawerHeader(
            //   decoration: BoxDecoration(
            //       // color: Color(0xFFEC407A),
            //       ),
            //   child: ListTile(
            //     title: Text(
            //       'Text',
            //       style: TextStyle(fontSize: 20),
            //     ),
            //     leading: Icon(
            //       Icons.language,
            //       size: 32,
            //       color: Colors.black,
            //     ),
            //   ),
            // ),
            ListTile(
              title: Text(
                'Manuel Fam',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              subtitle: Text(
                '\nNew York\n\n\n',
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Profile',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Orders',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Wallet',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Discounts',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Shortlisted',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Privacy',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(fontSize: 30, color: Colors.white),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
