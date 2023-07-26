import 'package:flutter/material.dart';
import 'package:agua_para_todos/pages/source_map_page.dart';
import 'package:agua_para_todos/pages/source_form_page.dart';

class SourcePage extends StatefulWidget{
  const SourcePage({super.key});

  @override
  State<SourcePage> createState() => _SourcePageState();
}

class _SourcePageState extends State<SourcePage> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    SourceMapPage(),
    SourceFormPage(),
    //SourceMorePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nascentes App'), foregroundColor: Colors.white,
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.map_outlined),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_location_alt_outlined),
            label: 'Cadastro de Nascente',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help_outline_outlined),
            label: 'Saiba mais',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.cyan[400],
        onTap: _onItemTapped,
        type: BottomNavigationBarType.shifting,
        unselectedItemColor: Colors.black,
      ),
    );
  }
}