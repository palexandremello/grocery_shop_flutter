import 'package:flutter/material.dart';
import 'package:grocery_app/data/dummy_data.dart';
import 'package:grocery_app/ui/shared/widgets/appbar_widget.dart';
import 'package:grocery_app/ui/shared/widgets/categories_item.dart';
import 'package:grocery_app/ui/shared/widgets/search_bar_widget.dart';

class CategoriesProductPage extends StatelessWidget {
  const CategoriesProductPage({Key? key}) : super(key: key);

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
      body: GridView(
        padding: const EdgeInsets.all(35),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 0.75,
            crossAxisSpacing: 20,
            mainAxisSpacing: 15),
        children: DUMMY_CATEGORIES.map((category) {
          return CategoryItem(category: category);
        }).toList(),
      ),
    );
  }
}
