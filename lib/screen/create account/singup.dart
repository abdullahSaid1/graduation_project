import 'package:flutter/material.dart';
import 'package:graduation_project/custom/CustomizedTextFormField.dart';
import 'package:graduation_project/custom/validated.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SingupState();
}

class _SingupState extends State<SignUp> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool visibility = false;
  @override
  void dispose() {
    super.dispose();
    usernameController.dispose();
    emailController.dispose();
    passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const BackButton(),
                Image.asset("assets/images/Logo.png")
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Cereate Account",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 30),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text("Please create an account to find your dream job"),
            ),
            const SizedBox(
              height: 30,
            ),
            CustomizedTextFormField(
              controller: emailController,
              labelText: "User Name",
              prefixIcon: const Icon(
                Icons.person_rounded,
                color: Colors.black12,
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomizedTextFormField(
              controller: emailController,
              validator: emailValidated,
              labelText: "Email",
              prefixIcon: const Icon(
                Icons.email,
                color: Colors.black12,
              ),
              keyboardType: TextInputType.text,
            ),
            const SizedBox(
              height: 20,
            ),
            CustomizedTextFormField(
              controller: passwordController,
              validator: passwordValidated,
              labelText: "Password",
              prefixIcon: const Icon(
                Icons.lock_outline_rounded,
                color: Colors.black12,
              ),
              obscureText: !visibility,
              suffixIcon: InkWell(
                onTap: () => setState(() {
                  visibility = !visibility;
                }),
                child: visibility
                    ? const Icon(Icons.visibility)
                    : const Icon(Icons.visibility_off),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Password must be at least 8 charactrs",
              style: TextStyle(color: Colors.black12),
            ),
            const SizedBox(
              height: 70,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have an account?",
                  style: TextStyle(color: Colors.black12),
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    )),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        if (states.contains(MaterialState.pressed)) {
                          return Colors.green;
                        }
                        return Colors.white54;
                      },
                    ),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                    ))),
                child: const Text(
                  'Create account',
                  style: TextStyle(fontSize: 20, color: Colors.black12),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("assets/images/Line.png"),
                const Text(
                  "Or Sign up With Account",
                  style: TextStyle(color: Colors.black26, fontSize: 15),
                ),
                Image.asset("assets/images/Line.png")
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/Button.png")),
                  TextButton(
                      onPressed: () {},
                      child: Image.asset("assets/images/Button (1).png"))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
