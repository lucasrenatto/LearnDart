import 'package:flutter/material.dart';
import 'package:netflix/views/home/home-view.dart';
import 'package:netflix/views/search-view.dart';

class CoreView extends StatefulWidget {
  const CoreView({super.key});

  @override
  State<CoreView> createState() => _CoreViewState();
}

class _CoreViewState extends State<CoreView> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeView(),
    SearchView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Início',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Buscar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.play_circle_outlined),
            label: 'Em Breve',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.download_sharp),
            label: 'Downloads',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: 'Mais',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white70,
        backgroundColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
