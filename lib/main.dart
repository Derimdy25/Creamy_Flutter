import 'package:flutter/material.dart';
import 'package:ice_cream_app/Screen/home_screen.dart';
import 'package:ice_cream_app/Screen/login_screen.dart';
import 'package:ice_cream_app/Screen/register_screen.dart';
import 'package:ice_cream_app/Screen/cart.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/login',
      routes: {
        '/login': (context) => const LoginScreen(),
        '/register': (context) => const RegisterScreen(),
        '/home': (context) => const HomeScreen(),
        '/cart': (context) => const CartPage(),
      },
    );
  }
}
