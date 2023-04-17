import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/components/shoe_tile.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class ShopPage extends StatefulWidget {
  ShopPage({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
              Shoe shoe = Shoe(
                  name: "Air Jordan 1 Mid SE",
                  price: 2240,
                  imgPath: "assets/images/Air_Jordan_1_mid_SE.png",
                  description: "cool Shoes");
              // Create a shoe
              return ShoeTile(
                shoe: shoe,
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
    );
  }
}
