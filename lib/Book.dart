import 'package:flutter/material.dart';

class Book {
  final String author, title, imageURL, description;
  final Color color;

  Book(this.title, this.author, this.color, this.imageURL, {this.description});
}
