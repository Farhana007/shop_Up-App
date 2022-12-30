import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_up/model/cart_model.dart';
import 'cart_page.dart';


import 'components/grocery_item_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:() => Navigator.push(context, MaterialPageRoute(builder: (context){
          return CartPage();
        })),
        child: Icon(Icons.shopping_bag),
        backgroundColor: Colors.black,
      ),
      body: SafeArea(

        child: Center(
          child: Column(
            children: [

              SizedBox(
                height: 20,
              ),

              Padding(
                padding: EdgeInsets.all( 24),
                child: Text("Good morning,"),
              ),

              SizedBox(
                height: 10,
              ),


              Padding(
                padding: EdgeInsets.symmetric(horizontal: 34.0),
                child: Text("Let's order  fresh food ",style: TextStyle(
                  fontWeight: FontWeight.w700,
                fontSize: 24),),
              ),

              Divider(
                thickness: 1,
                color: Colors.green[100]
                ,
              ),

              SizedBox(
                height: 24,
              ),

              Padding(
                padding: EdgeInsets.all(15),
                child: Text("Fresh Items",style: TextStyle(
                  fontSize: 26,
                  color: Colors.deepOrange
                ),),
              ),


              Expanded(
                  child: Consumer <CartModel>(
                    builder: (context,value, child){
                       return GridView.builder(
                         itemCount: value.shopItem.length,
                           padding: EdgeInsets.all(12),
                           gridDelegate:
                           const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1/1.3),
                           itemBuilder: (context , index){
                             return GroceryItmeTile(
                                 itemName: value.shopItem[index][0],
                                 itemPrice: value.shopItem[index][1],
                                 color:value.shopItem[index][3],
                                 imagePath: value.shopItem[index][2],
                                  onPressed: (){
                                    Provider.of<CartModel>(context,listen: false).addItemToCard(index);
                                  },
                             );
                           },
                       );
                    },
                  )
              ),

            ],
          ),
        ),
      ),

    );
  }
}
