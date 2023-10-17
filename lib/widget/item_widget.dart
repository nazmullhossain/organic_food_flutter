import 'package:ecommerce_flutter/pages/item_pages.dart';
import 'package:flutter/material.dart';

class Itemwidget extends StatelessWidget {
  const Itemwidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(left: 10, right: 10, top: 10),
          child: Row(
            children: [
              Text(
                "Top",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF00A368),
                ),
              ),
              Text(
                "See All",
                style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.black54),
              ),
            ],
          ),
        ),
        GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          padding: EdgeInsets.symmetric( horizontal: 10),
          childAspectRatio: 0.9,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            for (int i = 1; i < 7; i++)
              Container(
                // padding: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 6)
                    ]),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () {
             Navigator.push(context, MaterialPageRoute(builder: (_)=>ItemPage(img:"images/$i.png",)));
                      },
                      child: Container(
                        // padding: EdgeInsets.all(10),
                        child: Image.asset(
                          "images/$i.png",
                          height: 110,
                          width: 110,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Item title",
                          style: TextStyle(
                              fontSize: 22,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555)),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 0),
                      child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          "Fresh Fruit 2Kg",
                          style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF555555)),
                        ),
                      ),
                    ),
                    // Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 10),
                   child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Padding(
                         padding: EdgeInsets.symmetric(vertical: 0),
                         child: Row(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children: [
                             Text(
                               "\$20",
                               style: TextStyle(
                                   fontSize: 20,
                                   fontWeight: FontWeight.bold,
                                   color: Color(0xFF00A368)),
                             )
                           ],
                         ),
                       ),
                       InkWell(
                         onTap: () {},
                         child: Container(
                           padding: EdgeInsets.all(0),
                           decoration: BoxDecoration(
                             color: Color(0xFF00A368),
                             borderRadius: BorderRadius.circular(10),
                           ),
                           child: Icon(
                             Icons.add_shopping_cart,
                             color: Colors.white,
                           ),
                         ),
                       )
                     ],
                   ),
                 )
                  ],
                ),
              )
          ],
        )
      ],
    );
  }
}
