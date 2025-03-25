import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';

class Oopsnotfound extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {},
        ),
        actions: [
          CircleAvatar(
            backgroundImage: NetworkImage("https://your-profile-image-url.com"),
          ),
          SizedBox(width: 10),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              decoration: InputDecoration(
                hintText: "        What are you looking for ?",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.tune),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(24),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.white38,
              ),
            ),
          ),
          SizedBox(height: 20),
          Image.asset(
            'assets/images/cart.jpg',
            height: 250,
          ),
          SizedBox(height: 20),
          Text(
            "Oops Not Found!",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Check our big offers, fresh products\n and fill your cart with items",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
          ),
          SizedBox(height: 20),
          CustomBottom(text: 'Continue Shopping', onPressed: () {}),
          Spacer(),
        ],
      ),
    );
  }
}
