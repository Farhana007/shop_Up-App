

import 'package:flutter/material.dart';

class GroceryItmeTile extends StatelessWidget {

 final String itemName;

final String itemPrice;

 final String imagePath;

 final color;
 void Function()? onPressed;

     GroceryItmeTile({
     super.key,
    required this.itemName,
    required this.itemPrice,
    required this.color,
    required this.imagePath,
    required this.onPressed

});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
        decoration: BoxDecoration(
          color: color[200],
          borderRadius: BorderRadius.circular(12)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image.asset(
              imagePath,
              height: 65,
             ),
            
            Text(itemName),

            MaterialButton(
              child: Text( '\$ ' + itemPrice,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontWeight: FontWeight.w600
              ),),
                color: color[800],
                onPressed:onPressed)
          ],
        ),
      ),
    );
  }
}
