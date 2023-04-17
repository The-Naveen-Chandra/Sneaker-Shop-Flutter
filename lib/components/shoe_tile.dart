import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class ShoeTile extends StatelessWidget {
  Shoe shoe;
  ShoeTile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25.0),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(children: [
        // shoe image
        Image.asset(shoe.imgPath),


        // description
        Text(shoe.name),


        // price + details

        
        // button to add to cart

      ]),
    );
  }
}
