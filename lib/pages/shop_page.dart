import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/cart_model.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  // add shoe to cart method
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    // alert the user, shoe successfully added
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text("Successfully Added."),
        icon: Icon(
          Icons.check_circle_outline_rounded,
          size: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Column(
        children: [
          // search bar
          Container(
            padding: const EdgeInsets.all(12.0),
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            decoration: BoxDecoration(
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(8.0)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Search",
                  style: GoogleFonts.roboto(
                    color: Colors.black,
                  ),
                ),
                const Icon(Icons.search_rounded)
              ],
            ),
          ),

          // message
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Text(
              "Everyone flies... some fly longer than others.",
              style: GoogleFonts.poppins(
                color: Colors.grey[800],
              ),
            ),
          ),

          // hot picks
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "Hot Picks 🔥",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
                Text(
                  "See all",
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.bold,
                    color: Colors.amber[800],
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(
            height: 10,
          ),

          // list of shoes
          Expanded(
            child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: shoes.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                // get a shoe form shop list
                Shoe shoe = value.getShoeList()[index];

                // return the shoe
                return ShoeTile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe),
                );
              },
            ),
          ),

          const Padding(
            padding: EdgeInsets.only(
              left: 20.0,
              right: 20.0,
              top: 10.0,
              bottom: 10,
            ),
            child: Divider(
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
