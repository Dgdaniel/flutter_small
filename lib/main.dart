import 'package:flut/pages/first_page.dart';
import 'package:flut/pages/home_page.dart';
import 'package:flut/pages/settings_page.dart';
import 'package:flut/pages/third_pages.dart';
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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  FirstPage(),
        routes: {
        "/second" : (context) => const SettingsPage(),
        "/third" : (context) => const ThirdPage(),
        "/first" : (context) =>  FirstPage(),
        "/home" : (context) => const HomePage(),
    },

    );
  }
}
