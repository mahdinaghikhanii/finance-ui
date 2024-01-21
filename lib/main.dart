import 'package:finance/pages/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: "PoppinsRegular",
        textTheme: const TextTheme(
          displayLarge:
              TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
          displayMedium:
              TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
          displaySmall:
              TextStyle(fontFamily: "PoppinsBold", color: Colors.white),
          headlineLarge:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          headlineMedium:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          headlineSmall:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          bodyLarge: TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
          bodyMedium:
              TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
          bodySmall: TextStyle(fontFamily: "PoppinsLight", color: Colors.white),
          titleLarge:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          titleMedium:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
          titleSmall:
              TextStyle(fontFamily: "PoppinsMedium", color: Colors.white),
        ),
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}
