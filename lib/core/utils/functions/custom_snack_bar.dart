import 'package:flutter/material.dart';

void customsnackBar(context, String text) {
   ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(text),
    ),
  );
}