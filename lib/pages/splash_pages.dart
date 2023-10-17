import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("images/splash.png",
            height: 300,),
            Container(
              margin: EdgeInsets.only(top: 50),
              child: Text("Buy Fresh Froceries",
              style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color(0xff00A368)
              ),),
            ),
            SizedBox(height: 50,),
            InkWell(
              onTap: (){
                Navigator.pushReplacementNamed(context, "/homepage");
              },
              child: Ink(
                padding: EdgeInsets.symmetric(
                  horizontal: 80,
                  vertical: 16
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xFF00A368)
                ),
                child: Text("Get Started",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold
                ),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
