import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;
import 'package:sliding_sheet/sliding_sheet.dart';

import '../widget/bottom_cart_widget.dart';
import '../widget/category_widget.dart';
import '../widget/item_widget.dart';
import '../widget/popular_item_widget.dart';
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF00A368),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(
                  right: 20,
                  left: 15,
                  top: 10
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(Icons.menu,
                    color: Colors.white,
                        size: 30,),
                    Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF00A368),
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white.withOpacity(0.5),
                            blurRadius: 2
                          )
                        ]
                      ),
                      child: badges.Badge(
                        badgeContent: Text("3"),
                        badgeStyle: badges.BadgeStyle(
                          badgeColor: Colors.red,
                          padding: EdgeInsets.all(7),

                        ),
                        child: InkWell(
                          onTap: (){
                            showSlidingBottomSheet(context, builder: (context){
                          return SlidingSheetDialog(
                            elevation: 0,
                            cornerRadius: 16,
                            builder: (context,state){
                              return BottomCartSheet();
                            }
                          );
                            });
                          }
                          ,
                          child: Icon(CupertinoIcons.cart,
                          size: 30,color: Colors.white,),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // alignment: Alignment.center,
                padding: EdgeInsets.symmetric(
                  horizontal: 15
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,

                    ),),
                    Text("What do your want to Buy?",style: TextStyle(
                      color: Colors.white,
                      fontSize: 20
                    )
                      ,)
                  ],
                ),
              ),

              Container(
                margin: EdgeInsets.symmetric(horizontal: 15,vertical: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),

                ),
                child: TextField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    prefixIcon: Icon(Icons.search),
                    suffixIcon: Icon(Icons.filter_list)
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(
                  top: 20
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)
                  )
                ),
                child: Column(
                  children: [
                    CatagoryWidget(),
                    PopulerItemWidget(),
                    Itemwidget()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
