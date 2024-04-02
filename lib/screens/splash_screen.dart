import 'package:flutter/material.dart';
import 'package:womensnet/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
    super.key,
  });

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateNext();
  }

  navigateNext() async {
    await Future.delayed(const Duration(milliseconds: 1500), () {});

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
             Color.fromARGB(255, 191, 13, 51),
                  Color.fromARGB(255, 139, 15, 95),Color.fromARGB(255, 182, 23, 57), // Light pinkish-red
              Color.fromARGB(255, 147, 54, 115), // Dark pinkish-red
            ],
          ),
          // image: DecorationImage(
          //   fit: BoxFit.cover,
          //   image: AssetImage('assets/splash.jpg'),

          // ),
        ),
        child: GestureDetector(
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          child: Container(
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(right: 15),
                  child: Image(
                    
                    image: AssetImage(
                      'assets/logo.png',
                    ),
                    height: 270,
                    width: 270,
                  ),
                ),
                Text(
                  'WomensNEST',
                  style: TextStyle(
                      color: Color.fromARGB(255, 227, 147, 207),
                      fontSize: 30,
                      fontWeight: FontWeight.bold),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
