import 'package:flutter/material.dart';
import 'package:graduation_project/screen/screen1.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashState();
}

class _SplashState extends State<SplashScreen> {
  @override
  void didChangeDependencies() async {
    super.didChangeDependencies();
    Future.delayed(const Duration(seconds: 2), () async {});
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) => const Screen1()),
        (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: [
                  Image.asset(
                    "assets/images/Blur.png",
                    filterQuality: FilterQuality.high,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                      child: Image.asset(
                        "assets/images/Logo.png",
                        filterQuality: FilterQuality.high,
                      )),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              "assets/images/Indicator.png",
              filterQuality: FilterQuality.high,
            )
          ],
        ),
      ),
    );
  }
}
