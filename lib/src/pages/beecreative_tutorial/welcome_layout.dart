import 'package:flutter/material.dart';

class WelcomeLayout extends StatelessWidget {

  final String imageSrc;
  final String welcHeader;
  final String welcBody;
  final bgColor;
  final TextStyle headerStyle;
  final TextStyle bodyStyle;

  WelcomeLayout(
      this.imageSrc, 
      this.welcHeader, 
      this.welcBody, 
      this.headerStyle, 
      this.bodyStyle,
      this.bgColor
    );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(bgColor),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              new Container(
                width: 172.55,
                height: 150.61,
                decoration: BoxDecoration(
                  image: new DecorationImage(
                    image: ExactAssetImage(imageSrc),
                    fit: BoxFit.contain
                  )
                ),
              ),
              new Container(
                margin: EdgeInsets.only(top: 20),
                width: 350,
                height: 400,
                alignment: Alignment.topCenter,
                padding: EdgeInsets.only(
                  top: 50,
                  bottom: 15,
                  left: 50,
                  right: 50
                ),
                decoration: new BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: Colors.white,
                  boxShadow: [new BoxShadow(
                    color: Colors.black12,
                    blurRadius: 6.0,
                    spreadRadius: 6.0,
                    offset: new Offset(0.0, 3.0)
                  )],
                  shape: BoxShape.rectangle,
                ),
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    new Text(
                      welcHeader, 
                      style: headerStyle,
                    ),
                    new Container(
                      margin: EdgeInsets.only(
                        top: 20
                      ),
                      child: new Text(
                        welcBody,
                        style: bodyStyle,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Expanded(
                      child: new Container(
                        alignment: Alignment.bottomRight,
                        child: new Text(">", style: headerStyle),
                      ),
                    )
                  ],
                )
              )
          ],
        )
      ),
    );
  }
}