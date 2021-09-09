import 'package:flutter/material.dart';
import 'package:grocery_app/ui/shared/widgets/appbar_widget.dart';
import 'package:grocery_app/ui/shared/widgets/search_bar_widget.dart';

class FavouritePage extends StatefulWidget {
  FavouritePage({Key? key}) : super(key: key);

  @override
  _FavouritePageState createState() => _FavouritePageState();
}

class _FavouritePageState extends State<FavouritePage> {
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
          child: Text('Fav Page'),
        ),
      ),
    );
  }
}
