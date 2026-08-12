import 'package:flutter/material.dart';
import 'package:my_app/slicing/chatty/theme_chatty.dart';
import 'package:my_app/slicing/shoes/theme_shoes.dart';
import 'package:my_app/widgets/product_card.dart';
import 'package:my_app/widgets/product_tile.dart';

class ShoesPage extends StatelessWidget {
  const ShoesPage({super.key});

  // header
  Widget header() {
    return Container(
      margin: EdgeInsets.all(defaultMargin),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hai, Ihsan Miftahul Hudassss",
                  style: primaryTextStyle.copyWith(
                    fontSize: 24,
                    fontWeight: semiBold,
                  ),
                  maxLines: 1,
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
          ),

          Container(
            width: 54,
            height: 54,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage("assets/images/friend1.png"),
              ),
            ),
          ),
        ],
      ),
    );
  }

  // categories
  Widget categories() {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: primaryColor,
              ),
              child: Text(
                "All Shoes",
                style: primaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: semiBold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(color: secondaryColor),
              ),
              child: Text(
                "Training",
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(color: secondaryColor),
              ),
              child: Text(
                "Basket",
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(color: secondaryColor),
              ),
              child: Text(
                "Hiking",
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
              ),
            ),

            Container(
              margin: EdgeInsets.only(right: 16),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: transparentColor,
                border: Border.all(color: secondaryColor),
              ),
              child: Text(
                "Training",
                style: secondaryTextStyle.copyWith(
                  fontSize: 13,
                  fontWeight: light,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // popular Products
  Widget popularProductsTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 0),
      child: Text(
        "Popular Products",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  // productCard
  Widget popularProducts() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            SizedBox(width: defaultMargin),
            ProductCard(),
            ProductCard(),
            ProductCard(),
          ],
        ),
      ),
    );
  }

  // New Arrivals
  Widget newArrivalsTitle() {
    return Container(
      margin: EdgeInsets.fromLTRB(defaultMargin, 30, defaultMargin, 0),
      child: Text(
        "New Arrivals",
        style: primaryTextStyle.copyWith(fontSize: 22, fontWeight: semiBold),
      ),
    );
  }

  // New Arrivals Tiles
  Widget newArrivals() {
    return Container(
      margin: EdgeInsets.only(top: 14),
      child: Column(children: [ProductTile(), ProductTile(), ProductTile()]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: ListView(
        children: [
          header(),
          categories(),
          popularProductsTitle(),
          popularProducts(),
          newArrivalsTitle(),
          newArrivals(),
        ],
      ),
    );
  }
}
