import 'package:flutter/material.dart';
import 'package:my_app/dasar/dasar_page.dart';

void main() {
  runApp(const MyApp());
}

// stl (stateless widget)
// stf (stateful widget)
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: DasarPage());
  }
}
