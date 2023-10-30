import 'package:car_rent_app/components/custom_widget_icons.dart';
import 'package:car_rent_app/components/textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  GlobalKey<FormState> formState = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: formState,
        child: Container(
          child: Stack(
            children: [
              Positioned(
                left: 30,
                bottom: 550,
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: Color(0xFF4455F3),
                  ),
                ),
              ),
              Positioned(
                top: 60,
                right: 0,
                left: 2,
                child: Column(
                  children: [
                    Container(
                      child: Image.asset(
                          "assets/images/driven-ferrari-488gtb-superJumbo-removebg-preview 1.png"),
                    ),
                    const SizedBox(height: 15),
                    CustomTextForm(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Can't be empty";
                        }
                        return null;
                      },
                      hinttext: "Email",
                      mycontroller: email,
                      obscureText: false,
                    ),
                    const SizedBox(height: 15),
                    CustomTextForm(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Can't be empty";
                        }
                        return null;
                      },
                      hinttext: "Password",
                      obscureText: true,
                      mycontroller: password,
                    ),
                    Container(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () {},
                        child: const Text(
                          "Forget Password",
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ),
                    TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF4455F3),
                        ),
                      ),
                      onPressed: () async {
                        try {
                          final credential = await FirebaseAuth.instance
                              .signInWithEmailAndPassword(
                                  email: email.text, password: password.text);
                          Navigator.of(context)
                              .pushReplacementNamed("homepage");
                        } on FirebaseAuthException catch (e) {
                          if (e.code == 'user-not-found') {
                            print('No user found for that email.');
                          } else if (e.code == 'wrong-password') {
                            print('Wrong password provided for that user.');
                          }
                        }
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat",
                          fontSize: 25,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Don't Have an account?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "signup", (route) => false);
                          },
                          child: const Text(
                            "SignUp",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const CustomLoginIcons(
                      title: "Or Login With",
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
