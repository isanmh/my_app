import 'package:flutter/material.dart';

class ClipRectExample extends StatelessWidget {
  const ClipRectExample({super.key});

  @override
  Widget build(BuildContext context) {
    const TextStyle style = TextStyle(color: Colors.white);

    return Scaffold(
      appBar: AppBar(
        title: const Text("ClipRect Page"),
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .spaceEvenly,
          children: <Widget>[
            Container(
              alignment: .center,
              constraints: const BoxConstraints(maxWidth: 200, maxHeight: 100),
              color: Colors.blue,
              child: const Text('No ClipRRect', style: style),
            ),
            ClipRRect(
              borderRadius: .circular(100.0),
              child: Container(
                alignment: .center,
                constraints: const BoxConstraints(
                  maxWidth: 100,
                  maxHeight: 100,
                ),
                color: Colors.green,
                child: const Text('ClipRRect', style: style),
              ),
            ),
            ClipRRect(
              borderRadius: const .only(
                topLeft: Radius.circular(200.0),
                topRight: Radius.circular(20.0),
                bottomRight: Radius.circular(80.0),
                bottomLeft: Radius.circular(40.0),
              ),
              child: Container(
                alignment: .center,
                constraints: const BoxConstraints(
                  maxWidth: 300,
                  maxHeight: 100,
                ),
                color: Colors.purple,
                child: const Text('ClipRRect', style: style),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
