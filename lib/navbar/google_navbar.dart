import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:my_app/dasar/root_page.dart';
import 'package:my_app/slicing/shoes/shoes_page.dart';
import 'package:my_app/views/album_page.dart';
import 'package:my_app/views/chatty_api.dart';
import 'package:my_app/views/notes_page.dart';

class GoogleNavbar extends StatefulWidget {
  const GoogleNavbar({super.key});

  @override
  State<GoogleNavbar> createState() => _GoogleNavbarState();
}

class _GoogleNavbarState extends State<GoogleNavbar> {
  int currentPage = 0;
  List<Widget> pages = [NotesPage(), ChattyApi(), ShoesPage(), RootPage()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: pages[currentPage]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(blurRadius: 20, color: Colors.black.withOpacity(.1)),
          ],
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
            child: GNav(
              backgroundColor: Colors.white,
              rippleColor: Colors.grey[300]!,
              hoverColor: Colors.grey[100]!,
              gap: 8,
              activeColor: Colors.white,
              iconSize: 24,
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              duration: Duration(milliseconds: 400),
              tabBackgroundColor: Colors.purple,
              tabBackgroundGradient: LinearGradient(
                colors: [Colors.deepPurple, Colors.purpleAccent],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              color: Colors.purple,
              tabs: [
                GButton(icon: Icons.home, text: 'Home'),
                GButton(icon: Icons.favorite, text: 'Likes'),
                GButton(icon: Icons.search, text: 'Search'),
                GButton(icon: Icons.person, text: 'Profile'),
              ],
              selectedIndex: currentPage,
              onTabChange: (index) {
                setState(() {
                  currentPage = index;
                });
              },
            ),
          ),
        ),
      ),
    );
  }
}
