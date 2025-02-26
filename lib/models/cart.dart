import 'package:flutter/material.dart';

import 'package:sneakers/models/shoe.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
        name: "Zoom Freak",
        price: "300",
        imagePath: "lib/images/air-max.png",
        description: "A classic and durable sneaker with an iconic leather design appeal."
    ),

    Shoe(
        name: "Air Jordans",
        price: "350",
        imagePath: "lib/images/air-max1.png",
        description: "A cushioned and retro-inspired shoe offering lightweight comfort."
    ),

    Shoe(
        name: "Zoom Pegasus 402",
        price: "280",
        imagePath: "lib/images/air-max2.png",
        description: "A smooth and ergonomically designed sneaker built for efficiency."
    ),

    Shoe(
        name: "Dunk Low",
        price: "400",
        imagePath: "lib/images/air-max3.png",
        description: "A trendy, skate-inspired shoe with premium materials and casual versatility."
    ),

    Shoe(
        name: "Vaporfly 3",
        price: "250",
        imagePath: "lib/images/air-max4.png",
        description: "An ultra-light racing sneaker with energy-returning technology."
    ),
  ];

// list of items in user cart
List<Shoe> userCart = [];

// get list of shoes for sale
List<Shoe> getShoeList() {
  return shoeShop;
}

// get cart
List<Shoe> getUserCart() {
  return userCart;

}

//add items to cart
void addToCart(Shoe shoe) {
  userCart.add(shoe);
  notifyListeners();
}

//remove items from cart
void removeFromCart(Shoe shoe) {
  userCart.remove(shoe);
  notifyListeners();

}
}