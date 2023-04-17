import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:sneaker_shop/models/cart_model.dart';
import 'package:sneaker_shop/models/shoe_data.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {
  // remove item from cart
  void removeItemFormCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);

    // alert the user, shoe successfully deleted
    showDialog(
      context: context,
      builder: (context) => const AlertDialog(
        title: Text(
          "Successfully Deleted",
          textAlign: TextAlign.center,
        ),
        icon: Icon(
          Icons.delete_outline_rounded,
          size: 25,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
      ),
      margin: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        leading: Image.asset(
          widget.shoe.imgPath,
        ),
        title: Text(widget.shoe.name),
        subtitle: Text(widget.shoe.price.toString()),
        trailing: IconButton(
          icon: const Icon(
            Icons.delete_outline_rounded,
            size: 25,
          ),
          onPressed: removeItemFormCart,
        ),
      ),
    );
  }
}
