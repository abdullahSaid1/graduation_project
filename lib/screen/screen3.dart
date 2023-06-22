import 'package:flutter/material.dart';

class Screen3 extends StatelessWidget {
  const Screen3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          SafeArea(
              child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/images/Logo.png",
                    filterQuality: FilterQuality.high,
                  ),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Skip",
                        style: TextStyle(fontSize: 20, color: Colors.black26),
                      )),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Image.asset(
                "assets/images/Background3.png",
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/Tittle3.png",
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SizedBox(
                  width: 200.0,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
              Image.asset(
                "assets/images/Indicator.png",
                filterQuality: FilterQuality.high,
              )
            ],
          )),
        ],
      ),
    );
  }
}
