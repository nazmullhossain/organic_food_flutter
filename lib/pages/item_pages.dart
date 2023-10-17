import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../widget/bottom_bar_widet.dart';

class ItemPage extends StatelessWidget {
   ItemPage({Key? key,required this.img}) : super(key: key);
String img;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomBarWidget(),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.all(15),
                height: 350,
                width: double.infinity,
                alignment: Alignment.topLeft,
                  decoration: BoxDecoration(
                    // color: Colors.red,
                    image: DecorationImage(
                      image: AssetImage(img),
                    )
                  ),
                child: InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child: Icon(Icons.arrow_back,
                  size: 30,
                      color: Color(0xFF00A368),),
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height*0.4,
                margin: EdgeInsets.only(top: 20),
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  color: Color(0xFF00A368),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),

                  )
                ),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(
                      top: 10,
                      bottom: 15
                    ),child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Fruit Title",style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,

                        ),),
                        Row(
                          children: [
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8
                                  )
                                ]
                              ),
                              child: Icon(CupertinoIcons.minus),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(
                                horizontal: 10
                              ),
                              child: Text("1"),
                            ),
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 2,
                                    blurRadius: 8
                                  )
                                ]
                              ),
                              child: Icon(CupertinoIcons.plus),
                            ),
                          ],
                        )
                      ],
                    ),),
                    Row(
                      children: [
                        Icon(Icons.star,
                          size: 30,
                          color: Colors.amber,),
                        Text("4.8 (230)",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.bold
                        ),)
                      ],
                    ),
                    Padding(padding: EdgeInsets.symmetric(
                      vertical: 20
                    ),child: Column(
                      children: [
                        Text("Description",style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),),
                        SizedBox(height: 10,),
                        Text("This is the description of the product",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 17,
                        ),)
                      ],
                    ),)
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
