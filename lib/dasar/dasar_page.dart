import 'package:flutter/material.dart';

class DasarPage extends StatefulWidget {
  const DasarPage({super.key});

  @override
  State<DasarPage> createState() => _DasarPageState();
}

class _DasarPageState extends State<DasarPage> {
  // variable state
  bool isSwitch = false;
  bool? isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("L O G O")),
        backgroundColor: Colors.transparent,
        titleTextStyle: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: Colors.purple,
        ),
        leading: IconButton(
          onPressed: () {},
          icon: Icon(Icons.apple),
          color: Colors.purple,
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notification_add),
            color: Colors.purple,
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.settings),
            color: Colors.purple,
          ),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 70),
            Image.asset("assets/images/logo.png"),
            Divider(color: Colors.black, height: 10),
            SizedBox(height: 10),
            Container(
              color: isSwitch ? Colors.purple : Colors.blue,
              padding: EdgeInsets.all(40),
              child: Text(
                "Text 1",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ),
            SizedBox(height: 10),
            // ElevatedButton, textButton, OutlinedButton
            ElevatedButton(
              onPressed: () {
                debugPrint("Elevated Button");
              },
              child: Text("Elevated Button"),
              style: ElevatedButton.styleFrom(
                backgroundColor: (isCheck == false)
                    ? Colors.purple
                    : Colors.blue,
                foregroundColor: Colors.white,
              ),
            ),
            TextButton(
              onPressed: () {
                print("Text Button");
              },
              child: Text("Text Button"),
              style: TextButton.styleFrom(),
            ),
            OutlinedButton(
              onPressed: () {
                print("Outlined Button");
              },
              child: Text(
                "Outlined Button",
                style: TextStyle(color: Colors.blue),
              ),
            ),

            // Row
            GestureDetector(
              onTap: () {
                print("Row Clicked");
              },
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.account_balance_wallet),
                  Text("Row Text"),
                  Icon(Icons.settings),
                ],
              ),
            ),

            // switch, checkbox
            Switch(
              value: isSwitch,
              onChanged: (bool newValue) {
                setState(() {
                  isSwitch = newValue;
                });
              },
            ),
            SizedBox(height: 10),
            Checkbox(
              value: isCheck,
              onChanged: (bool? newValue) {
                setState(() {
                  isCheck = newValue;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
