import 'package:car_rent_app/components/custom_widget_icons.dart';
import 'package:car_rent_app/components/textformfield.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController username = TextEditingController();
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
                right: 30,
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
                          "assets/images/driven-ferrari-488gtb-superJumbo-removebg-preview 2.png"),
                    ),
                    CustomTextForm(
                      validator: (val) {
                        if (val!.isEmpty) {
                          return "Can't be empty";
                        }
                        return null;
                      },
                      hinttext: "UserName",
                      obscureText: false,
                      mycontroller: username,
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
                      obscureText: false,
                      mycontroller: email,
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
                    const SizedBox(height: 15),
                    TextButton(
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(
                          Color(0xFF4455F3),
                        ),
                      ),
                      onPressed: () async {
                        if (formState.currentState!.validate()) {
                          try {
                            final credential = await FirebaseAuth.instance
                                .createUserWithEmailAndPassword(
                              email: email.text,
                              password: password.text,
                            );
                            Navigator.of(context)
                                .pushReplacementNamed("homepage");
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'weak-password') {
                              print('The password provided is too weak.');
                            } else if (e.code == 'email-already-in-use') {
                              print(
                                  'The account already exists for that email.');
                            }
                          } catch (e) {
                            print(e);
                          }
                        } else {
                          print("Invalid");
                        }
                      },
                      child: const Text(
                        "SignUp",
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
                          "Already Have an account?",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pushNamedAndRemoveUntil(
                                "login", (route) => false);
                          },
                          child: const Text(
                            "Login",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        )
                      ],
                    ),
                    const CustomLoginIcons(
                      title: "Or SignUp With",
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
