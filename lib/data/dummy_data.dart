import 'package:flutter/material.dart';
import 'package:grocery_app/core/models/category.dart';

const DUMMY_CATEGORIES = [
  CategoryModel(
    id: '1',
    title: 'Fresh Fruits \n& Vegetable',
    imageUrl: 'assets/images/pngfuel 10.png',
    color: Color.fromRGBO(83, 177, 177, 1),
    fillColor: Color.fromRGBO(83, 177, 177, 0.10),
  ),
  CategoryModel(
    id: '2',
    title: 'Cooking Oil \n& Ghee',
    imageUrl: 'assets/images/cooking_oil_and_ghee.png',
    //F8A44C
    color: Color.fromRGBO(248, 164, 76, 1),
    fillColor: Color.fromRGBO(248, 164, 76, 0.25),
  ),
  CategoryModel(
    id: '3',
    title: 'Meat & Fish',
    imageUrl: 'assets/images/meat_and_fish.png',
    color: Color.fromRGBO(247, 165, 147, 1),
    fillColor: Color.fromRGBO(247, 165, 147, 0.2),
  ),
  CategoryModel(
    id: '4',
    title: 'Bakery & Snacks',
    imageUrl: 'assets/images/bakery_and_snacks.png',
    color: Color.fromRGBO(211, 176, 224, 1),
    fillColor: Color.fromRGBO(211, 176, 224, 0.2),
  ),
  CategoryModel(
    id: '5',
    title: 'Dairy & Eggs',
    imageUrl: 'assets/images/dairy_and_eggs.png',
    color: Color.fromRGBO(253, 229, 152, 1),
    fillColor: Color.fromRGBO(253, 229, 152, 0.2),
  ),
  CategoryModel(
      id: '6',
      title: 'Beverages',
      imageUrl: 'assets/images/beverages.png',
      color: Color.fromRGBO(183, 223, 245, 1),
      fillColor: Color.fromRGBO(183, 223, 245, 0.2))
];
