import 'package:ecommerce_app/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      home: HomePage(),
      theme: ThemeData(
        fontFamily: 'Lato',
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(255, 225, 30, 1.0), primary: Color.fromRGBO(254, 206,1,1)),
        inputDecorationTheme: InputDecorationTheme(
          prefixIconColor: Color.fromRGBO(119, 119, 119, 1),
          hintStyle: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      
      debugShowCheckedModeBanner: false,
    );
  }
}
