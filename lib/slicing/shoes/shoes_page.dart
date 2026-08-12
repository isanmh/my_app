import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';
import 'package:my_app/slicing/shoes/theme_shoes.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  // header
  Widget header() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hai, Ihsan Miftahul Huda",
                style: primaryTextStyle.copyWith(
                  fontSize: 24,
                  fontWeight: semiBold,
                ),
              ),
              Text(
                "@isanz_mh",
                style: secondaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: regular,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(children: [header()]),
    );
  }
}
