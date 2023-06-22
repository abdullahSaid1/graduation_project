import 'package:flutter/material.dart';
import 'package:graduation_project/screen/screen3.dart';

class Screen2 extends StatelessWidget {
  const Screen2({super.key});

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
                "assets/images/Background2.png",
                filterQuality: FilterQuality.high,
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset(
                "assets/images/Tittle2.png",
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
                      'Next',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) => const Screen3()),
                          (route) => false);
                    },
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
