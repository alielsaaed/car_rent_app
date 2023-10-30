import 'package:flutter/material.dart';

class CustomTextForm extends StatelessWidget {
  final String hinttext;
  final bool obscureText;
    final TextEditingController mycontroller;
  final String? Function(String?)? validator;

  const CustomTextForm({
    super.key,
    required this.hinttext,
    required this.obscureText, required this.mycontroller, required this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: TextFormField(
        validator: validator,
        controller: mycontroller,
        obscureText: obscureText,
        decoration: InputDecoration(
          
            hintText: hinttext,
            hintStyle: const TextStyle(fontSize: 16, color: Colors.black38),
            contentPadding:
                const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            filled: true,
            fillColor: Colors.grey[200],
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(
                    color: Color.fromARGB(255, 184, 184, 184))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(50),
                borderSide: const BorderSide(color: Colors.grey))),
      ),
    );
  }
}
