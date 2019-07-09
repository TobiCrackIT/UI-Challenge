import 'package:flutter/material.dart';

class Book{
  final String author,title,imageURL,genre;
  final int nPages;
  final double price;
  final Color color;

  Book({this.author, this.title, this.imageURL, this.genre, this.nPages,
      this.price,this.color});


}