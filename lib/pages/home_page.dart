import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/components/bottom_nav_bar.dart';
import 'package:sneaker_shop/pages/cart_page.dart';
import 'package:sneaker_shop/pages/shop_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // this selected index is to control the bottom nav bar
  int _selectedIndex = 0;

  // this method will update selected index
  // when the user taps to the bottom bar

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  // pages to display
  final List<Widget> _pages = [
    // shop page
    const ShopPage(),

    // Cart page
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Builder(
          builder: (context) => IconButton(
            highlightColor: Colors.transparent,
            splashColor: Colors.transparent,
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
            icon: Padding(
              padding: const EdgeInsets.only(left: 12.0),
              child: Icon(
                Icons.menu_rounded,
                color: Colors.grey.shade900,
              ),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[900],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                // logo
                DrawerHeader(
                  child: Image.asset(
                    "assets/images/Nike-Logo.png",
                    color: Colors.white,
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Divider(
                    color: Colors.grey[800],
                  ),
                ),

                // other apps
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.home_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Home",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Favorites",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.shopping_bag_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Cart",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.account_circle,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Account",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.info_outline_rounded,
                      color: Colors.white,
                    ),
                    title: Text(
                      "About",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 25.0),
                  child: ListTile(
                    leading: const Icon(
                      Icons.ios_share,
                      color: Colors.white,
                    ),
                    title: Text(
                      "Share",
                      style: GoogleFonts.roboto(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 25.0,
                bottom: 10.0,
              ),
              child: ListTile(
                leading: const Icon(
                  Icons.logout,
                  color: Colors.white,
                ),
                title: Text(
                  "Logout",
                  style: GoogleFonts.roboto(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
