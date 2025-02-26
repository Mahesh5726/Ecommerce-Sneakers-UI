import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneakers/models/shoe.dart';

import '../models/cart.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;

  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void removeItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeFromCart(widget.shoe);
    //alert the user, shoe successfully removed
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully Removed!"),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.grey[200], borderRadius: BorderRadius.circular(12)),
      margin: EdgeInsets.only(bottom: 10),
      child: ListTile(
          leading: Image.asset(widget.shoe.imagePath),
          title: Text(widget.shoe.name),
          subtitle: Text('\$' + widget.shoe.price),
          trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: removeItemFromCart
          ),
      ),
    );
  }
}
