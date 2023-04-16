import 'package:flutter/material.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class ShoeTile extends StatelessWidget {
  // Shoe shoe;
  ShoeTile({super.key, });

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
        //

      ]),
    );
  }
}
