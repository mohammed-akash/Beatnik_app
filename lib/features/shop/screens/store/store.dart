import 'package:beatnik/common/widgets/appbar/appbar.dart';
import 'package:beatnik/common/widgets/products/product_cart/cart_menu_icon.dart';
import 'package:flutter/material.dart';
class StoreScreen extends StatelessWidget {
  const StoreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: BeatnikAppbar(
        title: Text('Explore'),
        actions: [
          BeatnikCartIcon(onPressed: (){}, iconColor: Colors.white,)
        ],
      ),
      body: Container(

      ),
    );
  }
}
