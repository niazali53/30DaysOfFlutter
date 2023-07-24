import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String name = "";
  bool changeButton = false;

  @override
  Widget build(context) {
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Image.asset(
              'assets/images/login_img.png',
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              "Welcome $name",
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter UserName",
                      labelText: "Username",
                    ),
                    onChanged: (value) {
                      name = value;
                      setState(() {});
                    },
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: const InputDecoration(
                      hintText: "Enter password",
                      labelText: "password",
                    ),
                  ),
                  const SizedBox(
                    height: 60,
                  ),

                  InkWell(
                    onTap: () async {
                      Navigator.pushNamed(context, "/");
                      setState(() {
                        changeButton = true;
                      });
                      await Future.delayed(
                        const Duration(seconds: 3),
                      );
                    },
                    child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: changeButton ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: Colors.deepPurple,
                          borderRadius: BorderRadius.circular(20)),
                      child: changeButton
                          ? const Icon(
                              Icons.done,
                              color: Colors.white,
                            )
                          : const Text(
                              'Login',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                              ),
                            ),
                    ),
                  )

                  // ElevatedButton(
                  //     onPressed: () {
                  //       Navigator.pushNamed(context, "/");
                  //     },
                  //     style: ElevatedButton.styleFrom(
                  //       padding: const EdgeInsets.symmetric(horizontal: 60.0),
                  //         shape: RoundedRectangleBorder(
                  //             borderRadius: BorderRadius.circular(40))),
                  //     child: const Text('Login'))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
