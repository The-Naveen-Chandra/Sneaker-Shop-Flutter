import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class Cart extends ChangeNotifier{
  // list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: "Air Jordan 1 Mid SE",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Air_Jordan_1_mid_SE.png",
    ),
    Shoe(
      name: "Air Jordan 1 Mid SE",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Air_Jordan1midSE.png",
    ),
    Shoe(
      name: "Nike Air Force 107",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Nike_Air_Force107.png",
    ),
    Shoe(
      name: "Nike Air Force 107LV",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Nike_air_Force107LV8.png",
    ),
    Shoe(
      name: "Nike Air Max",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Nike_air_max.png",
    ),
    Shoe(
      name: "Nike Invincible",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Nike_Invincible.png",
    ),
    Shoe(
      name: "Nike Free Metcon 5",
      price: 23400,
      description: dummyText,
      imgPath: "assets/images/Nike_Free_Metcon5.png",
    ),
  ];

  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // adding items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }

}
