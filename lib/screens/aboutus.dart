import 'package:flutter/material.dart';

class AboutUs extends StatefulWidget {
  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0.1,
          backgroundColor: Color(0xFF4F51C0),
          title: Text('About Us'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Center(
                child: Image.asset('assets/img/5.png'),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'SkyBuildz is a trusted name in the construction industry, SkyBuildz boast a unparalled 
                quality of raw material and out of the box creative designes. We specialized in both domestic and commercial
                construction project and offer customized renovation services as well.
               Our mission is to deliver  on your promises. For over a year,through collaboration and expertise, we guide our clients
                 throughout the construction process to turn their vision into reality. We operate as a family with
                 a commitment to construct building and supply raw material that are measured on quality and values.
                 Our way of connecting with our clients continues to be one-on-one, person-to-person.  ',

                   
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 10.0,
                child: Divider(
                  color: Colors.grey,
                ),
              ),
              Text(
                'For any concern/Questions/ kindely email us at skybuildzconstructions@mail.comg',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 12,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ));
  }
}
