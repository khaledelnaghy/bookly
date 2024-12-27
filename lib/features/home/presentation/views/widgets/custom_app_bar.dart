import 'package:bookly/core/utils/assets.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, this.logoImage = AssetsData.logo, required this.icon});

  final String logoImage;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 15,
        left: 30,
        right: 15,
      ),
      child: Row(
        children: [
          Image.asset(
           logoImage,
            width: 100,
            height: 100,
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              icon,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
