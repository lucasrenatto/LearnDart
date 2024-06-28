import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:netflix/views/home-view.dart';
import 'package:netflix/views/splash-view.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: const ColorScheme(
          brightness: Brightness.dark,
          primary: Color.fromRGBO(135, 1, 0, 1),
          onPrimary: Color.fromRGBO(205, 205, 205, 1),
          secondary: Colors.black,
          onSecondary: Colors.white,
          error: Colors.red,
          onError: Colors.white,
          background: Color.fromRGBO(23, 23, 23, 1),
          onBackground: Colors.white,
          surface: Colors.black,
          onSurface: Color.fromRGBO(205, 205, 205, 1),
        ),
      ),
      routes: {
        '/home': (context) => const HomeView(),
      },
      home: const SplashView(),
    ),
  );
}
