import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
          width: w,
          height: h * 0.35,
          child: Column(children: [
            SizedBox(
              height: h / 6,
            ),
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage("img/profile1.png"),
              backgroundColor: Colors.amber,
            )
          ]),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("img/signup.png"), fit: BoxFit.cover)),
        ),
        SizedBox(
          height: h / 50,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "Welcome",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.black54),
          ),
        ),
        SizedBox(
          height: h / 100,
        ),
        Container(
          margin: EdgeInsets.only(left: 20),
          child: Text(
            "kaibalya@hotmail.com",
            style: TextStyle(fontSize: 20, color: Colors.black),
          ),
        ),
        SizedBox(
          height: h / 10,
        ),
        Center(
          child: Container(
            margin: EdgeInsets.all(0),
            width: w / 2.2,
            height: h * 0.07,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: AssetImage("img/loginbtn.png"), fit: BoxFit.cover)),
            child: Center(
              child: Text(
                "Sign out",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
