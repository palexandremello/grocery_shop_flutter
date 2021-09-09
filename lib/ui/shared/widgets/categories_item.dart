import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:grocery_app/core/models/category.dart';

class CategoryItem extends StatelessWidget {
  final CategoryModel category;

  const CategoryItem({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          print("tapped");
        },
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 30),
              alignment: Alignment.topCenter,
              height: 180,
              width: 190,
              child: Image.asset(
                category.imageUrl,
                width: 130,
                height: 80,
              ),
              decoration: BoxDecoration(
                color: category.fillColor,
                shape: BoxShape.rectangle,
                border: Border.all(
                  color: category.color,
                  width: 1,
                ),
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 25),
              alignment: Alignment.bottomCenter,
              child: Text(category.title,
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  )),
            ),
          ],
        ));
  }
}
