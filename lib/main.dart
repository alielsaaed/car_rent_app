import 'package:car_rent_app/brands_screen.dart';
import 'package:car_rent_app/car_details_page.dart';
import 'package:car_rent_app/favorite_page.dart';
import 'package:car_rent_app/get_start_page.dart';
import 'package:car_rent_app/home_page.dart';
import 'package:car_rent_app/login_page.dart';
import 'package:car_rent_app/notification_screen.dart';
import 'package:car_rent_app/settings.dart';
import 'package:car_rent_app/signup_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        print('User is currently signed out!');
      } else {
        print('User is signed in!');
      }
    });
    super.initState();
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          background: const Color(0xFFD9D9D9),
          seedColor: const Color(0xFF4455F3),
          brightness: Brightness.light,
          primary: const Color(0xFF4455F3),
          secondary: Colors.white,
        ),
        useMaterial3: true,
        fontFamily: 'Montserrat',
      ),
      home: const GetStartPage(),
      routes: {
        "signup": (context) => const SignUp(),
        "login": (context) => const Login(),
        "homepage": (context) => const HomePage(),
        "cardetails": (context) => const CarDetailsPage(),
        "favorite": (context) => const FavoritePage(),
        "notifications": (context) => const NotiScreen(),
        "brands": (context) => const BrandsScreen(),
        "setting": (context) => const SettingScreen(),
      },
    );
  }
}
