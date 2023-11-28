import 'package:country/home_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5)).then((value) => Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const MyHomePage())));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("assets/users.png",height: 100,width: 100,fit: BoxFit.contain,),
          const SizedBox(height: 10,),
          const LinearProgressIndicator(
            backgroundColor: Colors.white,
            color: Colors.blue,
          ),
        ],
      ),
    );
  }
}