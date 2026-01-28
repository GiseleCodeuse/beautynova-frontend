import 'package:flutter/material.dart';
import 'screens/landing_page.dart';
import 'screens/onboarding.dart';
import 'screens/chat_screen.dart';

void main() => runApp(BeautyApp());

class BeautyApp extends StatelessWidget {
  const BeautyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Beauty Advisor',
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFF0F0A0F),
        primaryColor: Color(0xFFFFC107),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary: Color(0xFFFFB74D),
        ),
        textTheme: TextTheme(
          bodyMedium: TextStyle(color: Colors.white, fontSize: 16),
          headlineLarge: TextStyle(
              fontFamily: "Cormorant Garamond",
              fontSize: 28,
              fontWeight: FontWeight.bold,
              color: Colors.white),
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => LandingPage(),
        '/onboarding': (context) => Onboarding(),
        '/chat': (context) => ChatScreen(),
      },
    );
  }
}
