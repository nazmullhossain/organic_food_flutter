import 'package:flutter/material.dart';

class CatagoryWidget extends StatelessWidget {
  const CatagoryWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(padding: EdgeInsets.only(
          left: 10,
          right: 10,
          bottom: 10,
        ),child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Category",style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color(0xFF00A368),

            ),),
            Text("See All",style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.black54
            ),)
          ],
        ),),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(

            children: [
              for(int i=1;i<7;i++)
              Container(
                margin: EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 10
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 1,
                      blurRadius: 6
                    )
                  ],
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(padding: EdgeInsets.all(5),
                    child: Image.asset("images/$i.png",
                    height: 50,
                        width: 50,),),
                    Padding(padding: EdgeInsets.only(
                      right: 5
                    ),child: Text("Category",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),),)
                  ],
                ),
              )
            ],
          ),

        )
      ],
    );
  }
}
