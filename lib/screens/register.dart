import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:skybuildz/screens/homeScreen.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Register extends StatelessWidget {
  final FirebaseUser user;
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Register({Key key, @required this.user})
      : assert(user != null),
        super(key: key);

  final Color textPrimaryColor = Color.fromRGBO(27, 27, 27, 1);
//
//  @override
//  void initState() {
//    // TODO: implement initState
//    super.initState();
//    animationController =
//        AnimationController(duration: Duration(seconds: 3), vsync: this);
//
//    animation = Tween(begin: -1.0, end: 0.0).animate(
//      CurvedAnimation(curve: Curves.fastOutSlowIn, parent: animationController),
//    );
//
//    delayedanimation = Tween(begin: -1.0, end: 0.0).animate(
//      CurvedAnimation(
//          curve: Interval(0.5, 1.0, curve: Curves.fastOutSlowIn),
//          parent: animationController),
//    );
//
//    delayedanimation = Tween(begin: -1.0, end: 0.0).animate(
//      CurvedAnimation(
//          curve: Interval(0.8, 1.0, curve: Curves.fastOutSlowIn),
//          parent: animationController),
//    );
//    animationController.forward();
//  }

  @override
  Widget build(BuildContext context) {
    final double height = MediaQuery.of(context).size.height;
    final double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      body: SingleChildScrollView(
        child: Container(
          width: width,
          child: Column(
            children: <Widget>[
              SizedBox(
                height: height * 0.05,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_back,
                      color: textPrimaryColor,
                      size: 32,
                    ),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.08,
              ),
              Column(
                children: <Widget>[
                  Text(
                    'Let\'s Get Started',
                    style: TextStyle(
                      color: textPrimaryColor,
                      fontWeight: FontWeight.w800,
                      fontSize: 28,
                    ),
                  ),
                  SizedBox(
                    height: height * 0.005,
                  ),
                  Text(
                    'Create an account to continue',
                    style: TextStyle(
                      color: Colors.grey[500],
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.07,
              ),
              Container(
                margin: EdgeInsets.only(right: 20, left: 20),
                child: Column(
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'First Name',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(
                            Icons.person_outline,
                            size: 20,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Last Name',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(
                            Icons.person_outline,
                            size: 20,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Email (Optional)',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(
                            Icons.email,
                            size: 20,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'City',
                        contentPadding: EdgeInsets.only(top: 20, bottom: 20),
                        prefixIcon: Padding(
                          padding: const EdgeInsets.only(left: 20, right: 15),
                          child: Icon(
                            Icons.location_city,
                            size: 20,
                          ),
                        ),
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.8),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide:
                              BorderSide(width: 0, style: BorderStyle.none),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(width: 2, color: Colors.blue),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: height * 0.05,
              ),
              RaisedButton(
                focusElevation: 0,
                highlightElevation: 0,
                splashColor: Colors.white.withOpacity(0.1),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => HomeScreen(user: user)),
                  );
                },
                color: Color(0xFF4F51C0),
                padding: EdgeInsets.fromLTRB(60, 25, 60, 25),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Text(
                  'Register',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.06,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
