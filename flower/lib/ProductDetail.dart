// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Drawer.dart';

class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  _ProductDetailState createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int Quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFFEC407A),
          title: Text('Categories'),
          centerTitle: true,
          leading: Builder(
            builder: (context) => IconButton(
              color: Colors.white,
              icon: Icon(
                Icons.view_headline,
                size: 35,
              ),
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.view_headline),
              tooltip: 'Show Snackbar',
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('This is a snackbar')));
              },
            )
          ]),
      drawer: DrawerF(),
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.network(
                'https://www.lookslikefilm.com/wp-content/uploads/2019/01/Amanda-Lennon4.jpg',
                fit: BoxFit.fill,
              ),
            ),
            Text(
              'Anniversary Flowers',
              style: TextStyle(fontSize: 30, color: Colors.black54),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '\$39.00',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xFFEC407A),
                  ),
                ),
                Row(
                  children: [
                    Icon(
                      Icons.star,
                      color: Color(0xFFEC407A),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFEC407A),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFEC407A),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFEC407A),
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Color(0xFFEC407A),
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
            Text(
              'This is one of the finest and beautifully designed gift for youe loved one. This is special for anniversary occasion that will be cherished for a very long time. It is one of the most loved gifts on our portal.',
              style: TextStyle(fontSize: 18, color: Colors.black54),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Quantity',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
                SizedBox(
                  width: 160.0,
                ),
                Text(
                  'Color',
                  style: TextStyle(fontSize: 18, color: Colors.black54),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  color: Colors.black12,
                  child: Row(
                    children: [
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (Quantity > 1) Quantity--;
                          });
                        },
                        child: Icon(
                          Icons.remove,
                          color: Colors.black54,
                          size: 20,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      Text(
                        '$Quantity',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.black54,
                        ),
                      ),
                      MaterialButton(
                        onPressed: () {
                          setState(() {
                            if (Quantity < 50) Quantity++;
                          });
                        },
                        child: Icon(
                          Icons.add,
                          color: Colors.black54,
                          size: 20,
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10)),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 30.0,
                ),
                Container(
                  color: Colors.black12,
                  child: Text(
                    "Gold",
                    style: TextStyle(
                      fontSize: 26,
                      color: Colors.black54,
                    ),
                  ),
                )
              ],
            ),
            RawMaterialButton(
              fillColor: Color(0xFFEC407A),
              onPressed: () {},
              child: Text(
                'Buy Now',
                style: TextStyle(color: Colors.white),
              ),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)),
            ),
          ],
        ),
      ),
    );
  }
}
