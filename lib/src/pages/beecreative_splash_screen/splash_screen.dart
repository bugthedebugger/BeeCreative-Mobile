import 'package:BeeCreative/src/assets_repo/app_assets.dart';
import 'package:BeeCreative/src/pages/beecreative_tutorial/welcome.dart';
import 'package:flutter/material.dart';
import 'package:flutter/animation.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> with TickerProviderStateMixin{

  AnimationController _controller;
  Animation animation;

  @override
  void initState(){
    super.initState();
    _controller = AnimationController(vsync: this, duration:Duration(milliseconds: 300));
    animation = Tween(begin: 0.0, end: 20.0).animate(_controller)
    ..addListener((){
      setState(() {});
    });
    _controller.forward().then((f){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WelcomePage()));
    });

  }

  @override
  void dispose(){
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          imageBuilder(32.6, 94.8, AppPhotos.splashScreenTop, 0, animation.value),
          imageBuilder(40.0, 95.0, AppPhotos.splashScreenMid, 0, 0),
          imageBuilder(32.6, 94.8, AppPhotos.splashScreenBot, animation.value, 0)
        ],
      ),
    );
  }

  Widget imageBuilder(double height, double width, String image, double marginTop, double marginBot){
    return Container(
      height: height,
      width: width,
      alignment: Alignment.center,
      padding: EdgeInsets.all(0),
      margin: EdgeInsets.only(top: marginTop, bottom: marginBot),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.contain
        )
      ),
    );
  }
}

  
