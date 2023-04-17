import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sneaker_shop/components/cart_item.dart';
import 'package:sneaker_shop/models/cart_model.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(
      builder: (context, value, child) => Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 25.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // heading
            Text(
              "My Cart",
              style: GoogleFonts.roboto(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),

            const SizedBox(
              height: 25,
            ),

            Expanded(
              child: ListView.builder(
                itemCount: value.getUserCart().length,
                itemBuilder: (context, index) {
                  // get individual shoe
                  Shoe individualShoe = value.getUserCart()[index];

                  // return the cart item
                  return CartItem(
                    shoe: individualShoe,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
