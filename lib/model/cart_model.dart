
import 'package:flutter/material.dart';

class CartModel extends ChangeNotifier{
  final List _shopItem = [

    ["Avocado", "4.00" , "images/avocado.png", Colors.green],
    ["Banana", "6.00" , "images/banana.png", Colors.yellow],
    ["Chicken", "2.50" , "images/chicken.png", Colors.brown],
    ["Water", "4.00" , "images/water.png", Colors.blue],


  ];

  //LIST OF CARD ITEMS

  List _cardItems = [];

  get shopItem => _shopItem;

  get cartItems => _cardItems;

  //add item to the card

  void addItemToCard (int index){
    _cardItems.add(_shopItem[index]);
    notifyListeners();
  }


// remove item to the Card

 void removeItemFromCard (int index){
    _cardItems.remove(_shopItem[index]);
    notifyListeners();
 }


//calculate price of the card items

  String calculatePrice (){
    double totalPrice = 0;
    for(int i = 0; i < _cardItems.length; i++ ){
      totalPrice += double.parse(_cardItems[i][1]);
    }
    return totalPrice.toStringAsFixed(2);
  }

}