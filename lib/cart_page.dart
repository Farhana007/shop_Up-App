import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_up/model/cart_model.dart';
import 'components/grocery_item_tile.dart';


class CartPage extends StatelessWidget {
  const CartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         backgroundColor: Colors.transparent,
        elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
      ),

       body: Consumer <CartModel> (builder: (context, value, child){
            return  Column(

              children: [
                 Text("My Cart",style: TextStyle(
                   fontSize: 26,
                   fontWeight: FontWeight.w500
                 ),),
                Expanded(
                  child: ListView.builder(
                     itemCount: value.cartItems.length,
                       padding: EdgeInsets.all(12),
                      itemBuilder: (context, index){
                        return Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Container(

                             decoration: BoxDecoration(
                               color:  Colors.grey[200],
                               borderRadius: BorderRadius.circular(12)
                             ),
                            child: ListTile(
                              leading: Image.asset(value.cartItems[index][2],
                              height: 38,),
                              title: Text(value.cartItems[index][0]),
                              subtitle: Text( '\$' + value.cartItems[index][1]),
                              trailing: IconButton(
                                  icon:  Icon(Icons.cancel),
                                  onPressed: () => Provider.of<CartModel>(context, listen : false).removeItemFromCard(index),
                              )
                            ),
                          ),
                        );
                      }
                  ),),
                 // total Payment 
                 Container(
                     margin: EdgeInsets.only(bottom: 18),
                    height: 80,
                   width: 270,
                   padding: EdgeInsets.all(13),
                   decoration: BoxDecoration(
                     color: Colors.green[400],
                     borderRadius: BorderRadius.circular(10)
                     
                   ),
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text("Total Price",
                           style: TextStyle(
                             fontSize: 12,
                             color: Colors.white70
                           ),),
                           Text( '\$' +value.calculatePrice(),
                           style: TextStyle(
                             fontSize: 22,
                             fontWeight: FontWeight.w700,
                             color: Colors.white
                           ),)
                         ],
                       ),
                      Container(
                         decoration: BoxDecoration(
                           border: Border.all(color: Colors.green.shade100),
                           borderRadius: BorderRadius.circular(7)
                         ),
                         padding: EdgeInsets.all(6),

                        child: Row(
                          children: [
                            Text("Pay Now",style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white
                            ),),
                            Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.white,
                            )
                          ],
                        ),


                      )
                    ],
                  ),
                 )
              ],
            );
       },)
    );
  }
}
