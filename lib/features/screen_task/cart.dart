import 'package:flutter/material.dart';
import 'package:marketi/core/widgets/custom_bottom.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart", style: TextStyle(fontWeight: FontWeight.bold)),
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
      body: Column(
        children: [
          SizedBox(height: 20),
          Image.asset(
            'assets/images/cart.jpg',
            height: 250,
          ),
          SizedBox(height: 20),
          Text(
            "Your Cart is Empty",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 10),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: Text(
              "Check our big offers, fresh products\n and fill your cart with items",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
          ),
          SizedBox(height: 20),
          CustomBottom(text: 'Start Shopping', onPressed: () {}),
          Spacer(),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.shopping_cart, color: Colors.blue),
                  label: "Cart"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.favorite), label: "Favorites"),
              BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
            ],
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
          ),
        ],
      ),
    );
  }
}
