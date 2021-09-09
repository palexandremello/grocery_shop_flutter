import 'package:flutter/material.dart';
import 'package:grocery_app/ui/shared/widgets/appbar_widget.dart';
import 'package:grocery_app/ui/shared/widgets/search_bar_widget.dart';

class CartPage extends StatefulWidget {
  CartPage({Key? key}) : super(key: key);

  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: 'Find Products',
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(100),
          child: SearchBarWidget(),
        ),
      ),
      body: Container(
        child: Center(
          child: Text('Cart Page'),
        ),
      ),
    );
  }
}
