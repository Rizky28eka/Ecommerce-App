import 'package:ecommerce_app2/colors.dart';
import 'package:ecommerce_app2/widgets/categories_title.dart';
import 'package:ecommerce_app2/widgets/product_list.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'cart_page.dart';
import 'search_page.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff030E22),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Container(
                          width: 295,
                          height: 40,
                          child: TextFormField(
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              contentPadding: EdgeInsets.only(
                                top: 11,
                                bottom: 11,
                              ),
                              fillColor: Color(0xff2C3545),
                              filled: true,
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(21),
                                borderSide: BorderSide.none,
                              ),
                              hintText: "I'm searching for..",
                              hintStyle: GoogleFonts.montserrat(
                                color: Color(0xff68687A),
                              ),
                              prefixIcon: InkWell(
                                onTap: () {
                                  Navigator.pushReplacement(
                                    context,
                                    PageRouteBuilder(
                                      pageBuilder:
                                          (context, animation1, animation2) =>
                                              SearchPage(),
                                      transitionDuration: Duration(seconds: 0),
                                    ),
                                  );
                                },
                                child: Icon(
                                  Icons.search,
                                  color: Color(0xff68687A),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 8),
                      InkWell(
                        onTap: () {
                          Navigator.pushReplacement(
                            context,
                            PageRouteBuilder(
                              pageBuilder: (context, animation1, animation2) =>
                                  CartPage(),
                              transitionDuration: Duration(seconds: 0),
                            ),
                          );
                        },
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color(0xff2C3545),
                            borderRadius: BorderRadius.circular(13),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/checkout_icon.png',
                                width: 28,
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 24, left: 16),
                    child: Row(
                      children: [
                        Container(
                          width: 294,
                          height: 148,
                          decoration: BoxDecoration(
                            color: Color(0xff6C5ECF),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 24),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'New Arrival \nItem up to 30%',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xffF8F7FD),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                        side: BorderSide(
                                          color: Color(0xffF8F7FD),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Grab it now',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xffF8F7FD),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 16.0, right: 24),
                                  child: Image.asset(
                                    'assets/product_one.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 16),
                        Container(
                          width: 294,
                          height: 148,
                          decoration: BoxDecoration(
                            color: Color(0xff21AE7B),
                            borderRadius: BorderRadius.circular(17),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 27.0, left: 24),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Flash sales \n12.12',
                                      style: GoogleFonts.montserrat(
                                        color: Color(0xffF8F7FD),
                                        fontSize: 19,
                                        fontWeight: FontWeight.w800,
                                      ),
                                    ),
                                    SizedBox(height: 8),
                                    OutlinedButton(
                                      style: OutlinedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(17),
                                        ),
                                        side: BorderSide(
                                          color: Color(0xffF8F7FD),
                                        ),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Grab it now',
                                        style: GoogleFonts.montserrat(
                                          color: Color(0xffF8F7FD),
                                          fontSize: 12,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(
                                    right: 20.0,
                                    left: 20,
                                  ),
                                  child: Image.asset(
                                    'assets/man_icon.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 16,
                    right: 16,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Top Categories",
                        style: GoogleFonts.montserrat(
                          color: AppColors.FontColorWhite,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "See All",
                        style: GoogleFonts.montserrat(
                          color: AppColors.FontColorWhite,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                    right: 20,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CategoriesTtile(
                        imageUrl: 'assets/category_one.png',
                        text: 'Stationary',
                      ),
                      CategoriesTtile(
                        imageUrl: 'assets/category_two.png',
                        text: 'Electronic',
                      ),
                      CategoriesTtile(
                        imageUrl: 'assets/category_three.png',
                        text: 'Houseware',
                      ),
                      CategoriesTtile(
                        imageUrl: 'assets/category_four.png',
                        text: 'Collection',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 32.0, left: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Someothing you like :',
                        style: GoogleFonts.montserrat(
                          color: AppColors.FontColorWhite,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20.0, left: 40, right: 40, bottom: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/product_two.png',
                            name: 'Nike Air Force X',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp1.650.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/watch.png',
                            name: 'Smartwatch 2.0',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp4.500.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/product_three.png',
                            name: 'Philips LED Wi-F..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp1.650.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/product_four.png',
                            name: 'Garnier Pure Act..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp4.500.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 16),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ProductList(
                            imageUrl: 'assets/product_five.png',
                            name: 'Rexus Headphon..',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp1.650.000',
                          ),
                          ProductList(
                            imageUrl: 'assets/product_six.png',
                            name: 'Airpods',
                            ratings: 'assets/star_icon.png',
                            amount: '(16)',
                            price: 'Rp4.500.000',
                          ),
                        ],
                      ),
                      SizedBox(height: 32),
                      Text(
                        "You've reached the end",
                        style: GoogleFonts.montserrat(
                          color: Color(0xfFF8F7FD),
                          fontSize: 12,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
