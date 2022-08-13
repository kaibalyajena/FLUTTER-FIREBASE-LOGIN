import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
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
        Container(
          margin: const EdgeInsets.only(left: 20, right: 20),
          width: w,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: h / 25,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          spreadRadius: 10,
                          color: Colors.grey.withOpacity(0.2))
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "email id",
                      prefixIcon: Icon(
                        Icons.email,
                        color: Colors.amber,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: h / 50,
              ),
              Container(
                decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 10,
                          offset: Offset(1, 1),
                          spreadRadius: 10,
                          color: Colors.grey.withOpacity(0.2))
                    ],
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "password",
                      prefixIcon: Icon(
                        Icons.password,
                        color: Colors.amber,
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(color: Colors.white, width: 1)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30))),
                ),
              ),
              SizedBox(
                height: h / 15,
              ),
              Center(
                child: Container(
                  margin: EdgeInsets.all(0),
                  width: w / 2.2,
                  height: h * 0.07,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      image: DecorationImage(
                          image: AssetImage("img/loginbtn.png"),
                          fit: BoxFit.cover)),
                  child: Center(
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: h / 10,
              ),
              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Signup using following methods",
                    style: TextStyle(color: Colors.grey, fontSize: 15),
                  ),
                ),
              ),
              Wrap(
                children: List<Widget>.generate(3, (index) {
                  return CircleAvatar();
                }),
              )
            ],
          ),
        )
      ]),
    );
  }
}
