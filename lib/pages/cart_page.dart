import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/models/shoe.dart';


import '../components/cart_item.dart';
import '../models/cart.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) =>
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "My Cart",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
                ),

                const SizedBox(height: 20),

                Expanded(child: ListView.builder(
                  itemCount: value.getUserCart().length,
                  itemBuilder: (context, index) {
                  //get individual shoe
                  Shoe shoe = value.getUserCart()[index];

                  //return the cart item
                  return CartItem(
                    shoe: shoe,
                  );
                },
                ))
              ],
            ),
          ),
    );
  }
}
