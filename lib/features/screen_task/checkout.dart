import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';

class Checkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Checkout", style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
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
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 20),
            Image.asset(
              'assets/images/checkout.jpg',
              height: 250,
            ),
            SizedBox(height: 20),
            Text(
              "Thank You",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                "Woah, You Have sucessfully orderd",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.black54),
              ),
            ),
            SizedBox(height: 20),
            CustomBottom(text: 'Start Shopping', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
