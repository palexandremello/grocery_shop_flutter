import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBarWidget extends AppBar {
  AppBarWidget({
    required String title,
    required PreferredSize bottom,
  }) : super(
          title: Text(
            title,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.bold,
              fontFamily: 'Roboto',
            ),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          bottom: bottom,
        );
}
