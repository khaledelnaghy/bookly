import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomWError extends StatelessWidget {
  const CustomWError({super.key, required this.errorMessage});
  final String errorMessage;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Text(
      errorMessage,
      style: Styles.textStyle18,
      textAlign: TextAlign.center,
    ));
  }
}
