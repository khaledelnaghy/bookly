import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomWError extends StatelessWidget {
  const CustomWError({super.key, required this.errorMessafe}); 
  final String errorMessafe ;


  @override
  Widget build(BuildContext context) {
    return Text(errorMessafe , style: Styles.textStyle18,);
  }
}