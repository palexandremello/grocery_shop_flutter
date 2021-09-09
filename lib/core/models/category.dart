import 'package:flutter/material.dart';

class CategoryModel {
  final String id;
  final String title;
  final String imageUrl;
  final Color color;
  final Color fillColor;

  const CategoryModel({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.color,
    required this.fillColor,
  });
}
