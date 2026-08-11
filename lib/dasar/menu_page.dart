import 'package:flutter/material.dart';
import 'package:my_app/dasar/dasar_page.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Menu Page")),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () {
                // cara 1 context no route
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => const DasarPage()),
                // );
                // cara 2 context with route
                Navigator.pushNamed(context, '/dasar');
              },
              child: const Text("Dasar Page"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/clip');
              },
              child: const Text("ClipRect"),
            ),
          ],
        ),
      ),
    );
  }
}
