import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netflix/shared/core-view.dart';
import 'package:netflix/views/couter.dart';
import 'package:netflix/views/home/home-view.dart';
import 'package:netflix/views/name.dart';
import 'package:netflix/views/search-view.dart';
import 'package:netflix/views/shows/show-view.dart';
import 'package:netflix/views/splash-view.dart';
import 'package:netflix/views/user-select-view.dart';

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
        '/user-select': (context) => const UserSelectView(),
        '/search': (context) => const SearchView(),
        '/core': (context) => const CoreView(),
        '/show': (context) => const ShowView()
      },
      home: const NameContainer(),
    ),
  );
}