import 'package:flutter/material.dart';

class BottomBarWidget extends StatelessWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        height: 70,
          padding: EdgeInsets.symmetric(
            horizontal: 20
          ),
        decoration: BoxDecoration(
          color: Colors.white
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("\$120",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00A368)
            ),),
            InkWell(
              onTap: (){},
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: 15,
                  horizontal: 20
                ),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Icon(Icons.add_shopping_cart,
                    color: Colors.white,
                        size: 28,),
                    SizedBox(width: 5,),
                    Text("Add to Cart",
                    style: TextStyle(
                      color: Colors.white,
                     fontWeight: FontWeight.bold,


                    ),)
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
