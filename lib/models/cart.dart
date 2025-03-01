import 'package:e_commerce_ui/models/shoe.dart';
import 'package:flutter/material.dart';

class Cart extends ChangeNotifier {

  // list of shoes for sale
  List<Shoe> shoeShop = [

    Shoe(name: "Air Jordans", price: "240", imagePath: "assets/images/img.png", description: "Güzel ayakkabı"),
    Shoe(name: "Zoom FREAK", price: "220", imagePath: "assets/images/img_1.png", description: "Daha güzel ayakkabı"),
    Shoe(name: "KD Treys", price: "200", imagePath: "assets/images/img_2.png", description: "Daha Daha güzel ayakkabı"),
    Shoe(name: "Kyrie 6", price: "310", imagePath: "assets/images/img_3.png", description: "Daha Daha Daha güzel ayakkabı"),

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

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }
  // remove items from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}