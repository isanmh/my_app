import 'package:flutter/material.dart';
import 'package:my_app/dasar/menu_page.dart';

class RootPage extends StatefulWidget {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Root Page',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
      ),
      drawer: Drawer(),
      endDrawer: Drawer(),
      // bottom Navigation Bar
      bottomNavigationBar: NavigationBar(
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'Search'),
        ],
        onDestinationSelected: (index) {
          // Handle destination selection
        },
      ),
      body: MenuPage(),
    );
  }
}
